import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_app/config/config.dart';

// Solo lectura
final simpleNameProvider = Provider.autoDispose<String>((ref) {
  
  return RandomGenerator.getRandomName();
});
