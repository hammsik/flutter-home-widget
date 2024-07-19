import 'package:flutter_home_widget/homepage/providers/character_search_provider.dart';
import 'package:flutter_home_widget/models/character_info.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'character_info_provider.g.dart';

@Riverpod(keepAlive: true)
class CurrentCharacter extends _$CurrentCharacter {
  @override
  FutureOr<CharacterInfo?> build() {
    return null;
  }

  void searchCharacter({required String characterName}) async {
    print('에에에에에에');
    state = const AsyncValue.loading();
    AsyncValue<CharacterInfo> characterInfo =
        await ref.watch(searchCharacterProvider(characterName: characterName));
    print('characterInfoddddddd $characterInfo');
  }
}
