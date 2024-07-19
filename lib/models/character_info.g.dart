// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'character_info.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$CharacterInfoImpl _$$CharacterInfoImplFromJson(Map<String, dynamic> json) =>
    _$CharacterInfoImpl(
      date: json['date'] as String?,
      name: json['character_name'] as String,
      worldName: json['world_name'] as String,
      gender: json['character_gender'] as String,
      job: json['character_class'] as String,
      jobLevel: json['character_class_level'] as String,
      level: (json['character_level'] as num).toInt(),
      exp: (json['character_exp'] as num).toInt(),
      expRate: json['character_exp_rate'] as String,
      guildName: json['character_guild_name'] as String?,
      image: json['character_image'] as String,
      dateCreate: json['character_date_create'] as String?,
      accessFlag: json['access_flag'] as String?,
      liberationQuestClearFlag: json['liberation_quest_clear_flag'] as String?,
    );

Map<String, dynamic> _$$CharacterInfoImplToJson(_$CharacterInfoImpl instance) =>
    <String, dynamic>{
      'date': instance.date,
      'character_name': instance.name,
      'world_name': instance.worldName,
      'character_gender': instance.gender,
      'character_class': instance.job,
      'character_class_level': instance.jobLevel,
      'character_level': instance.level,
      'character_exp': instance.exp,
      'character_exp_rate': instance.expRate,
      'character_guild_name': instance.guildName,
      'character_image': instance.image,
      'character_date_create': instance.dateCreate,
      'access_flag': instance.accessFlag,
      'liberation_quest_clear_flag': instance.liberationQuestClearFlag,
    };
