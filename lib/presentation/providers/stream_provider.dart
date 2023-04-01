import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_app/config/config.dart';



final usersInChatProvider = StreamProvider<List<String>>((ref) async* {

  final names = <String>[];
  yield [];

  await for( final name in RandomGenerator.randomNameStream() ) {
    names.add(name);
    yield names;
  }

});