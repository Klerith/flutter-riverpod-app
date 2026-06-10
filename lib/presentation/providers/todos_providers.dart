import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:riverpod_app/config/config.dart';
import 'package:riverpod_app/domain/domain.dart';
import 'package:uuid/uuid.dart';

part 'todos_providers.g.dart';

const uuid = Uuid();

enum FilterType { all, completed, pending }

@Riverpod(keepAlive: true)
class TodoCurrentFilter extends _$TodoCurrentFilter {
  @override
  FilterType build() => FilterType.all;

  void changeCurrentFilter(FilterType filter) {
    state = filter;
  }
}

@Riverpod(keepAlive: true)
class Todos extends _$Todos {
  @override
  List<Todo> build() => [
        Todo(
            id: uuid.v4(),
            description: RandomGenerator.getRandomName(),
            completedAt: null),
        Todo(
            id: uuid.v4(),
            description: RandomGenerator.getRandomName(),
            completedAt: DateTime.now()),
        Todo(
            id: uuid.v4(),
            description: RandomGenerator.getRandomName(),
            completedAt: null),
      ];

  void toggleTodo(String id) {
    state = state.map((todo) {
      if (todo.id == id) {
        todo = todo.copyWith(completedAt: todo.done ? null : DateTime.now());
      }

      return todo;
    }).toList();
  }

  void createTodo(String description) {
    state = [
      ...state,
      Todo(id: uuid.v4(), description: description, completedAt: null)
    ];
  }
}

// Filtered Todos

@riverpod
List<Todo> filteredTodos(Ref ref) {
  final filter = ref.watch(todoCurrentFilterProvider);
  final todos = ref.watch(todosProvider);

  if (filter == FilterType.all) return todos;
  if (filter == FilterType.completed) {
    return todos.where((todo) => todo.done).toList();
  }

  return todos.where((todo) => !todo.done).toList();

  //! Opcional: Si prefieren un Switch
  // switch (filter) {
  //   case FilterType.all:
  //     return todos;
  //   case FilterType.completed:
  //     return todos.where((todo) => todo.done).toList();
  //   case FilterType.pending:
  //     return todos.where((todo) => !todo.done).toList();
  // }
}
