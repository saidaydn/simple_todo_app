import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:todo_app/todo_app/enum/enum.dart';

final todoListFilter = StateProvider((_) => TodoListFilter.all);
