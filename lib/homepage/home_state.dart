import 'package:flutter_home_widget/homepage/providers/character_info_provider.dart';
import 'package:flutter_home_widget/models/character_info.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

mixin class HomeState {
  /// 캐릭터 이미지 URL
  AsyncValue<CharacterInfo?> currentCharacter(WidgetRef ref) => ref.watch(currentCharacterProvider);
}