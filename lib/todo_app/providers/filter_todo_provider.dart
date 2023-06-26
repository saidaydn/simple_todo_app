import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:todo_app/todo_app/enum/enum.dart';
import 'package:todo_app/todo_app/providers/todo_list_filter_provider.dart';
import 'package:todo_app/todo_app/providers/todo_list_provider.dart';


import '../model/model.dart';

final filteredTodos = Provider<List<Todo>>((ref) {
  final filter = ref.watch(todoListFilter);
  final todos = ref.watch(todoListProvider);

  switch (filter) {
    case TodoListFilter.completed:
      return todos.where((todo) => todo.completed).toList();
    case TodoListFilter.active:
      return todos.where((todo) => !todo.completed).toList();
    case TodoListFilter.all:
      return todos;
  }
});