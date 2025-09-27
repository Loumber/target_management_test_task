import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:target_management_test_task/controllers/kanban_controller.dart';
import 'package:target_management_test_task/ui/widgets/task_card.dart';
import 'package:target_management_test_task/ui/widgets/measure_size.dart';
import 'package:target_management_test_task/models/indicator_models.dart';

class KanbanBoard extends StatefulWidget {
  final KanbanController controller;
  final Future<void> Function() onRefresh;

  const KanbanBoard({super.key, required this.controller, required this.onRefresh});

  @override
  State<KanbanBoard> createState() => _KanbanBoardState();
}

class _ColumnData {
  final int? parentId;
  final List<IndicatorRow> items;

  _ColumnData({required this.parentId, required this.items});
}

class _KanbanBoardState extends State<KanbanBoard> {
  late List<_ColumnData> _columns;
  bool _saving = false;
  final Map<int?, double> _measuredBodyHeight = {};

  static const double _columnWidth = 320;
  static const double _emptyMinHeight = 160;
  static const double _taskPlaceholderHeight = 52;

  @override
  void initState() {
    super.initState();
    _rebuildColumns();
  }

  @override
  void didUpdateWidget(covariant KanbanBoard oldWidget) {
    super.didUpdateWidget(oldWidget);
    if (!identical(oldWidget.controller.rows, widget.controller.rows)) {
      _rebuildColumns();
    }
  }

  void _rebuildColumns() {
    final Map<int?, List<IndicatorRow>> byParent = {};
    final items = widget.controller.rows;
    for (final item in items) {
      byParent.putIfAbsent(item.parentId, () => []);
      byParent[item.parentId]!.add(item);
    }
    for (final list in byParent.values) {
      list.sort((a, b) => (a.order ?? 0).compareTo(b.order ?? 0));
    }
    final entries = byParent.entries.toList()..sort((a, b) => (a.key ?? -1).compareTo(b.key ?? -1));
    _columns = [for (final e in entries) _ColumnData(parentId: e.key, items: List.of(e.value))];
    setState(() {});
  }

  Future<void> _saveMove({
    required IndicatorRow item,
    required int? newParentId,
    required int newOrder,
    required List<_ColumnData> previous,
  }) async {
    setState(() => _saving = true);
    try {
      await widget.controller.moveItem(item: item, newParentId: newParentId, newOrder: newOrder);
    } catch (e) {
      setState(() => _columns = previous);
      if (context.mounted) {
        // ignore: use_build_context_synchronously
        ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text('Не удалось сохранить')));
      }
    } finally {
      if (mounted) setState(() => _saving = false);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        RefreshIndicator(
          onRefresh: widget.onRefresh,
          child: Scrollbar(
            thumbVisibility: true,
            child: SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              padding: const EdgeInsets.all(12),
              child: SizedBox(
                height: MediaQuery.of(context).size.height - 24,
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    _columnDropZone(0),
                    for (int i = 0; i < _columns.length; i++) ...[_columnDraggable(context, i), _columnDropZone(i + 1)],
                  ],
                ),
              ),
            ),
          ),
        ),

        if (_saving)
          Positioned(
            right: 16,
            bottom: 16,
            child: Card(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 8),
                child: Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    const SizedBox(width: 4),
                    const SizedBox(width: 16, height: 16, child: CircularProgressIndicator(strokeWidth: 2)),
                    const SizedBox(width: 8),
                    Text('Сохранение...', style: GoogleFonts.roboto(fontSize: 12)),
                  ],
                ),
              ),
            ),
          ),
      ],
    );
  }

  Widget _columnDraggable(BuildContext context, int index) {
    final column = _columns[index];
    final int? pid = column.parentId;
    final double width = _columnWidth;
    return Draggable(
      data: pid,
      dragAnchorStrategy: pointerDragAnchorStrategy,
      feedback: Material(
        child: ConstrainedBox(
          constraints: BoxConstraints.tightFor(width: width),
          child: _buildResizableColumn(context, index, preview: true),
        ),
      ),
      childWhenDragging: const SizedBox.shrink(),
      child: _buildResizableColumn(context, index),
    );
  }

  Widget _columnDropZone(int targetIndex) {
    return DragTarget(
      onWillAcceptWithDetails: (details) => details.data is int?,
      onAcceptWithDetails: (details) {
        final pid = details.data as int?;
        final oldIndex = _columns.indexWhere((c) => c.parentId == pid);
        if (oldIndex == -1) return;
        final moved = _columns.removeAt(oldIndex);
        final insertIndex = oldIndex < targetIndex ? targetIndex - 1 : targetIndex;
        _columns.insert(insertIndex.clamp(0, _columns.length), moved);
        setState(() {});
      },
      builder: (context, candidate, rejected) {
        final bool hasColumnDragging = candidate.whereType<int?>().isNotEmpty;
        final double previewWidth = hasColumnDragging ? _columnWidth : 5;
        return AnimatedContainer(
          duration: const Duration(),
          width: previewWidth,
          height: double.infinity,
          margin: const EdgeInsets.symmetric(horizontal: 6, vertical: 4),
          decoration: BoxDecoration(
            color:
                hasColumnDragging ? Theme.of(context).colorScheme.primary.withValues(alpha: 0.08) : Colors.transparent,
            borderRadius: BorderRadius.circular(12),
            border:
                hasColumnDragging
                    ? Border.all(color: Theme.of(context).colorScheme.primary.withValues(alpha: 0.35))
                    : null,
          ),
        );
      },
    );
  }

  Widget _buildResizableColumn(BuildContext context, int listIndex, {bool preview = false}) {
    final column = _columns[listIndex];
    final int? pid = column.parentId;
    final double width = _columnWidth;
    final double availableHeight = MediaQuery.of(context).size.height - 24;
    const double headerHeightApprox = 56;
    final double measuredBody = _measuredBodyHeight[pid] ?? 0.0;
    final double contentHeight =
        measuredBody == 0
            ? availableHeight
            : (headerHeightApprox + measuredBody).clamp(_emptyMinHeight, availableHeight);
    final bool needsScroll = measuredBody > (availableHeight - headerHeightApprox);
    final double desiredHeight = contentHeight;

    return Container(
      width: width,
      height: desiredHeight,
      decoration: BoxDecoration(
        color: Colors.white.withValues(alpha: 100),
        borderRadius: BorderRadius.circular(12),
        border: Border.all(color: Colors.black.withValues(alpha: 0.35)),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            width: double.infinity,
            padding: const EdgeInsets.all(12),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: const BorderRadius.vertical(top: Radius.circular(12)),
            ),
            child: Text(
              pid == null ? 'Без папки' : '$pid',
              style: GoogleFonts.roboto(fontWeight: FontWeight.w600, color: Colors.black),
            ),
          ),
          const SizedBox(height: 8),
          Expanded(
            child: MeasureSize(
              onChange: (size) {
                if (_measuredBodyHeight[pid] != size.height) {
                  setState(() => _measuredBodyHeight[pid] = size.height);
                }
              },
              child:
                  column.items.isEmpty
                      ? Center(child: SizedBox(height: 120, child: _dropZone(listIndex, 0)))
                      : needsScroll
                      ? ListView(
                        padding: EdgeInsets.zero,
                        children: [
                          _dropZone(listIndex, 0),
                          for (int i = 0; i < column.items.length; i++) ...[
                            _draggableCard(column.items[i]),
                            _dropZone(listIndex, i + 1),
                          ],
                        ],
                      )
                      : Column(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          _dropZone(listIndex, 0),
                          for (int i = 0; i < column.items.length; i++) ...[
                            _draggableCard(column.items[i]),
                            _dropZone(listIndex, i + 1),
                          ],
                        ],
                      ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _draggableCard(IndicatorRow item) {
    return Draggable<IndicatorRow>(
      data: item,
      dragAnchorStrategy: pointerDragAnchorStrategy,
      feedback: Material(
        color: Colors.transparent,
        child: ConstrainedBox(
          constraints: const BoxConstraints(maxWidth: 360),
          child: Opacity(opacity: 0.9, child: TaskCard(item: item)),
        ),
      ),
      childWhenDragging: const SizedBox.shrink(),
      child: Padding(padding: const EdgeInsets.symmetric(horizontal: 12), child: TaskCard(item: item)),
      onDragCompleted: () {},
    );
  }

  Widget _dropZone(int targetListIndex, int targetItemIndex) {
    return DragTarget<IndicatorRow>(
      onWillAcceptWithDetails: (details) => true,
      onAcceptWithDetails: (details) {
        final data = details.data;
        final prev = _snapshot();
        int sourceList = _columns.indexWhere((c) => c.items.any((e) => e.indicatorToMoId == data.indicatorToMoId));
        final source = _columns[sourceList];
        final int oldItemIndex = source.items.indexWhere((e) => e.indicatorToMoId == data.indicatorToMoId);
        final moved = source.items.removeAt(oldItemIndex);
        final target = _columns[targetListIndex];
        target.items.insert(targetItemIndex, moved.copyWith(parentId: target.parentId));
        _reindexOrders(target.items);
        if (sourceList != targetListIndex) {
          _reindexOrders(source.items);
        }
        setState(() {});
        _saveMove(item: moved, newParentId: target.parentId, newOrder: targetItemIndex, previous: prev);
      },
      builder: (context, candidate, rejected) {
        final bool active = candidate.isNotEmpty;
        return AnimatedContainer(
          duration: const Duration(milliseconds: 80),
          height: active ? _taskPlaceholderHeight : 8,
          margin: EdgeInsets.symmetric(horizontal: 12, vertical: active ? 6 : 0),
          decoration: BoxDecoration(
            color: active ? Theme.of(context).colorScheme.primary.withValues(alpha: 0.8) : Colors.transparent,
            borderRadius: BorderRadius.circular(8),
            border: active ? Border.all(color: Theme.of(context).colorScheme.primary.withValues(alpha: 0.35)) : null,
          ),
        );
      },
    );
  }

  List<_ColumnData> _snapshot() {
    return _columns.map((c) => _ColumnData(parentId: c.parentId, items: c.items.map((e) => e).toList())).toList();
  }

  void _reindexOrders(List<IndicatorRow> list) {
    for (int i = 0; i < list.length; i++) {
      list[i] = list[i].copyWith(order: i);
    }
  }
}
