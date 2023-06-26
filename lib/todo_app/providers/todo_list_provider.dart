import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:todo_app/todo_app/notifier/todo_list_notifier.dart';

import '../model/model.dart';

final todoListProvider = StateNotifierProvider<TodoList, List<Todo>>((ref) {
  return TodoList(const [
    Todo(id: 'todo-0', description: 'hi'),
    Todo(id: 'todo-1', description: 'hello'),
    Todo(id: 'todo-2', description: 'bonjour'),
  ]);
});