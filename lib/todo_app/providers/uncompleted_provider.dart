import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:todo_app/todo_app/providers/todo_list_provider.dart';

final uncompletedTodosCount = Provider<int>((ref) {
  return ref.watch(todoListProvider).where((todo) => !todo.completed).length;
});