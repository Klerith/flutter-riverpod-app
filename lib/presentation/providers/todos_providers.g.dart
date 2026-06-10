// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'todos_providers.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(TodoCurrentFilter)
final todoCurrentFilterProvider = TodoCurrentFilterProvider._();

final class TodoCurrentFilterProvider
    extends $NotifierProvider<TodoCurrentFilter, FilterType> {
  TodoCurrentFilterProvider._()
      : super(
          from: null,
          argument: null,
          retry: null,
          name: r'todoCurrentFilterProvider',
          isAutoDispose: false,
          dependencies: null,
          $allTransitiveDependencies: null,
        );

  @override
  String debugGetCreateSourceHash() => _$todoCurrentFilterHash();

  @$internal
  @override
  TodoCurrentFilter create() => TodoCurrentFilter();

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(FilterType value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<FilterType>(value),
    );
  }
}

String _$todoCurrentFilterHash() => r'3fdcecb63b3f3d1ddf02990c1fcba83c8b913b7c';

abstract class _$TodoCurrentFilter extends $Notifier<FilterType> {
  FilterType build();
  @$mustCallSuper
  @override
  WhenComplete runBuild() {
    final ref = this.ref as $Ref<FilterType, FilterType>;
    final element = ref.element as $ClassProviderElement<
        AnyNotifier<FilterType, FilterType>, FilterType, Object?, Object?>;
    return element.handleCreate(ref, build);
  }
}

@ProviderFor(Todos)
final todosProvider = TodosProvider._();

final class TodosProvider extends $NotifierProvider<Todos, List<Todo>> {
  TodosProvider._()
      : super(
          from: null,
          argument: null,
          retry: null,
          name: r'todosProvider',
          isAutoDispose: false,
          dependencies: null,
          $allTransitiveDependencies: null,
        );

  @override
  String debugGetCreateSourceHash() => _$todosHash();

  @$internal
  @override
  Todos create() => Todos();

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(List<Todo> value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<List<Todo>>(value),
    );
  }
}

String _$todosHash() => r'9cc009642b6b3cf4e636b68f49fc53bf8ce7dfd0';

abstract class _$Todos extends $Notifier<List<Todo>> {
  List<Todo> build();
  @$mustCallSuper
  @override
  WhenComplete runBuild() {
    final ref = this.ref as $Ref<List<Todo>, List<Todo>>;
    final element = ref.element as $ClassProviderElement<
        AnyNotifier<List<Todo>, List<Todo>>, List<Todo>, Object?, Object?>;
    return element.handleCreate(ref, build);
  }
}

@ProviderFor(filteredTodos)
final filteredTodosProvider = FilteredTodosProvider._();

final class FilteredTodosProvider
    extends $FunctionalProvider<List<Todo>, List<Todo>, List<Todo>>
    with $Provider<List<Todo>> {
  FilteredTodosProvider._()
      : super(
          from: null,
          argument: null,
          retry: null,
          name: r'filteredTodosProvider',
          isAutoDispose: true,
          dependencies: null,
          $allTransitiveDependencies: null,
        );

  @override
  String debugGetCreateSourceHash() => _$filteredTodosHash();

  @$internal
  @override
  $ProviderElement<List<Todo>> $createElement($ProviderPointer pointer) =>
      $ProviderElement(pointer);

  @override
  List<Todo> create(Ref ref) {
    return filteredTodos(ref);
  }

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(List<Todo> value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<List<Todo>>(value),
    );
  }
}

String _$filteredTodosHash() => r'437754171002f164ec7581c841f9d09d9582d8fe';
