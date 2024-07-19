import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';

part 'character_info.freezed.dart';
part 'character_info.g.dart';

@freezed
class CharacterInfo with _$CharacterInfo {
  const factory CharacterInfo({
    @JsonKey(name: 'date') required String? date,
    @JsonKey(name: 'character_name') required String name,
    @JsonKey(name: 'world_name') required String worldName,
    @JsonKey(name: 'character_gender') required String gender,
    @JsonKey(name: 'character_class') required String job,
    @JsonKey(name: 'character_class_level') required String jobLevel,
    @JsonKey(name: 'character_level') required int level,
    @JsonKey(name: 'character_exp') required int exp,
    @JsonKey(name: 'character_exp_rate') required String expRate,
    @JsonKey(name: 'character_guild_name') required String? guildName,
    @JsonKey(name: 'character_image') required String image,
    @JsonKey(name: 'character_date_create') required String? dateCreate,
    @JsonKey(name: 'access_flag') required String? accessFlag,
    @JsonKey(name: 'liberation_quest_clear_flag') required String? liberationQuestClearFlag,
  }) = _CharacterInfo;

  factory CharacterInfo.fromJson(Map<String, dynamic> json) => _$CharacterInfoFromJson(json);
}