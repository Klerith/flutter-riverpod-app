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
          isAutoDispose: true,
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

String _$todoCurrentFilterHash() => r'8c0bb86f2778e13e9477bb97af6c2a282deaf311';

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
