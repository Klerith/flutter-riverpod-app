// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'stream_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(usersInChat)
final usersInChatProvider = UsersInChatProvider._();

final class UsersInChatProvider extends $FunctionalProvider<
        AsyncValue<List<String>>, List<String>, Stream<List<String>>>
    with $FutureModifier<List<String>>, $StreamProvider<List<String>> {
  UsersInChatProvider._()
      : super(
          from: null,
          argument: null,
          retry: null,
          name: r'usersInChatProvider',
          isAutoDispose: false,
          dependencies: null,
          $allTransitiveDependencies: null,
        );

  @override
  String debugGetCreateSourceHash() => _$usersInChatHash();

  @$internal
  @override
  $StreamProviderElement<List<String>> $createElement(
          $ProviderPointer pointer) =>
      $StreamProviderElement(pointer);

  @override
  Stream<List<String>> create(Ref ref) {
    return usersInChat(ref);
  }
}

String _$usersInChatHash() => r'78d12e87b6ec2ecb13c0b957c7ae9c795a896c60';
