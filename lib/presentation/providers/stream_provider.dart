import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:riverpod_app/presentation/providers/providers.dart';

part 'stream_provider.g.dart';

@Riverpod(keepAlive: true)
Stream<List<String>> usersInChat(Ref ref) async* {
  final names = <String>[];
  // yield names;

  await for (final name in RandomGenerator.randomNameStream()) {
    names.add(name);
    yield names;
  }
}
