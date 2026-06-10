import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'todos_providers.g.dart';

enum FilterType { all, completed, pending }

@riverpod
class TodoCurrentFilter extends _$TodoCurrentFilter {
  @override
  FilterType build() => FilterType.all;

  void changeCurrentFilter(FilterType filter) {
    state = filter;
  }
}
