import 'package:flutter/material.dart';
import 'package:target_management_test_task/api/indicators_repository.dart';
import 'package:target_management_test_task/controllers/kanban_controller.dart';
import 'package:target_management_test_task/ui/widgets/kanban_board.dart';

class KanbanPage extends StatefulWidget {
  const KanbanPage({super.key});

  @override
  State<KanbanPage> createState() => _KanbanPageState();
}

class _KanbanPageState extends State<KanbanPage> {
  late final IndicatorsRepository _repository;
  late final KanbanController _controller;

  @override
  void initState() {
    super.initState();
    _repository = IndicatorsRepository(token: '5c3964b8e3ee4755f2cc0febb851e2f8');
    _controller = KanbanController(repository: _repository);
    _controller.load();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: AnimatedBuilder(
        animation: _controller,
        builder: (context, _) {
          if (_controller.loading) {
            return const Center(child: CircularProgressIndicator());
          }
          if (_controller.error != null) {
            return Center(
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Text('Ошибка: ${_controller.error}'),
                  const SizedBox(height: 8),
                  FilledButton(onPressed: _controller.load, child: const Text('Повторить')),
                ],
              ),
            );
          }
          return KanbanBoard(controller: _controller, onRefresh: _controller.load);
        },
      ),
    );
  }
}
