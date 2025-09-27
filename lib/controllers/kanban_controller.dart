import 'package:flutter/foundation.dart';
import 'package:target_management_test_task/api/indicators_repository.dart';
import 'package:target_management_test_task/models/indicator_models.dart';

class KanbanController extends ChangeNotifier {
  KanbanController({required IndicatorsRepository repository}) : _repository = repository;

  final IndicatorsRepository _repository;

  bool _loading = false;
  String? _error;
  List<IndicatorRow> _rows = [];

  bool get loading => _loading;
  String? get error => _error;
  List<IndicatorRow> get rows => _rows;

  Future<void> load() async {
    _loading = true;
    _error = null;
    notifyListeners();
    try {
      _rows = await _repository.fetchIndicators(
        periodStart: '2025-08-01',
        periodEnd: '2025-08-31',
        periodKey: 'month',
        requestedMoId: '42',
        authUserId: '40',
      );
      _loading = false;
      notifyListeners();
    } catch (e) {
      _loading = false;
      _error = e.toString();
      notifyListeners();
    }
  }

  Map<int?, List<IndicatorRow>> groupByParent() {
    final map = <int?, List<IndicatorRow>>{};
    for (final r in _rows) {
      map.putIfAbsent(r.parentId, () => []);
      map[r.parentId]!.add(r);
    }
    for (final list in map.values) {
      list.sort((a, b) => (a.order ?? 0).compareTo(b.order ?? 0));
    }
    return map;
  }

  Future<void> moveItem({
    required IndicatorRow item,
    required int? newParentId,
    required int newOrder,
  }) async {
    final previous = List<IndicatorRow>.from(_rows);
    // optimistic
    _rows = _rows.map((e) {
      if (e.indicatorToMoId == item.indicatorToMoId) {
        return e.copyWith(parentId: newParentId, order: newOrder);
      }
      return e;
    }).toList();
    notifyListeners();

    try {
      if (newParentId != null) {
        await _repository.saveParent(
          indicatorToMoId: item.indicatorToMoId,
          parentId: newParentId,
          periodStart: '2025-08-01',
          periodEnd: '2025-08-31',
          periodKey: 'month',
          authUserId: '40',
        );
      }
      await _repository.saveOrder(
        indicatorToMoId: item.indicatorToMoId,
        order: newOrder,
        periodStart: '2025-08-01',
        periodEnd: '2025-08-31',
        periodKey: 'month',
        authUserId: '40',
      );
    } catch (e) {
      // revert
      _rows = previous;
      notifyListeners();
      rethrow;
    }
  }
}
