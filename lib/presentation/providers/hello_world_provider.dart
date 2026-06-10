import 'package:riverpod_annotation/riverpod_annotation.dart';

// riverpodP <- shortcut
part 'hello_world_provider.g.dart';

@riverpod
String helloWorld(Ref ref) {
  return 'Hello world';
}
