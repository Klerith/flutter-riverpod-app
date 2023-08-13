import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:riverpod_app/config/config.dart';
import 'package:uuid/uuid.dart';

import '../../domain/domain.dart';

part 'todos_providers.g.dart';

const uuid = Uuid();
enum FilterType { all, completed, pending }

@Riverpod(keepAlive: true)
class TodoCurrentFilter extends _$TodoCurrentFilter {
  @override
  FilterType build() => FilterType.all; 

  void setCurrentFilter ( FilterType newFilter ) {
    state = newFilter;
  }
}


@Riverpod(keepAlive: true)
class Todos extends _$Todos {
  @override
  List<Todo> build() => [
    Todo(id: uuid.v4(), description: RandomGenerator.getRandomName(), completedAt: null ),
    Todo(id: uuid.v4(), description: RandomGenerator.getRandomName(), completedAt: DateTime.now() ),
    Todo(id: uuid.v4(), description: RandomGenerator.getRandomName(), completedAt: null ),
    Todo(id: uuid.v4(), description: RandomGenerator.getRandomName(), completedAt: DateTime.now() ),
    Todo(id: uuid.v4(), description: RandomGenerator.getRandomName(), completedAt: null ),
    Todo(id: uuid.v4(), description: RandomGenerator.getRandomName(), completedAt: null ),
  ];

  void toggleTodo(String id) {

    state = state.map((todo) {
      
      if ( todo.id == id ) {
        todo = todo.copyWith(
          completedAt: todo.done ? null : DateTime.now()
        );
      }
      return todo;
    }).toList();


  }


  void createTodo( String description ) {
    state = [
      ...state, 
      Todo(id: uuid.v4(), description: description, completedAt: null),
    ];
  }

}


///  filteredTodos // SOLO LECTURA
@riverpod
List<Todo> filteredTodos(FilteredTodosRef ref) {
  
  final currentFilter = ref.watch( todoCurrentFilterProvider );
  final todos = ref.watch( todosProvider );

  switch( currentFilter ){
    case FilterType.all:
      return todos;

    case FilterType.completed:
      return todos.where((todo) => todo.done).toList();

    case FilterType.pending:
      return todos.where((todo) => !todo.done).toList();
  }

}

