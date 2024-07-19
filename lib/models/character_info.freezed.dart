// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'character_info.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

CharacterInfo _$CharacterInfoFromJson(Map<String, dynamic> json) {
  return _CharacterInfo.fromJson(json);
}

/// @nodoc
mixin _$CharacterInfo {
  @JsonKey(name: 'date')
  String? get date => throw _privateConstructorUsedError;
  @JsonKey(name: 'character_name')
  String get name => throw _privateConstructorUsedError;
  @JsonKey(name: 'world_name')
  String get worldName => throw _privateConstructorUsedError;
  @JsonKey(name: 'character_gender')
  String get gender => throw _privateConstructorUsedError;
  @JsonKey(name: 'character_class')
  String get job => throw _privateConstructorUsedError;
  @JsonKey(name: 'character_class_level')
  String get jobLevel => throw _privateConstructorUsedError;
  @JsonKey(name: 'character_level')
  int get level => throw _privateConstructorUsedError;
  @JsonKey(name: 'character_exp')
  int get exp => throw _privateConstructorUsedError;
  @JsonKey(name: 'character_exp_rate')
  String get expRate => throw _privateConstructorUsedError;
  @JsonKey(name: 'character_guild_name')
  String? get guildName => throw _privateConstructorUsedError;
  @JsonKey(name: 'character_image')
  String get image => throw _privateConstructorUsedError;
  @JsonKey(name: 'character_date_create')
  String? get dateCreate => throw _privateConstructorUsedError;
  @JsonKey(name: 'access_flag')
  String? get accessFlag => throw _privateConstructorUsedError;
  @JsonKey(name: 'liberation_quest_clear_flag')
  String? get liberationQuestClearFlag => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CharacterInfoCopyWith<CharacterInfo> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CharacterInfoCopyWith<$Res> {
  factory $CharacterInfoCopyWith(
          CharacterInfo value, $Res Function(CharacterInfo) then) =
      _$CharacterInfoCopyWithImpl<$Res, CharacterInfo>;
  @useResult
  $Res call(
      {@JsonKey(name: 'date') String? date,
      @JsonKey(name: 'character_name') String name,
      @JsonKey(name: 'world_name') String worldName,
      @JsonKey(name: 'character_gender') String gender,
      @JsonKey(name: 'character_class') String job,
      @JsonKey(name: 'character_class_level') String jobLevel,
      @JsonKey(name: 'character_level') int level,
      @JsonKey(name: 'character_exp') int exp,
      @JsonKey(name: 'character_exp_rate') String expRate,
      @JsonKey(name: 'character_guild_name') String? guildName,
      @JsonKey(name: 'character_image') String image,
      @JsonKey(name: 'character_date_create') String? dateCreate,
      @JsonKey(name: 'access_flag') String? accessFlag,
      @JsonKey(name: 'liberation_quest_clear_flag')
      String? liberationQuestClearFlag});
}

/// @nodoc
class _$CharacterInfoCopyWithImpl<$Res, $Val extends CharacterInfo>
    implements $CharacterInfoCopyWith<$Res> {
  _$CharacterInfoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? date = freezed,
    Object? name = null,
    Object? worldName = null,
    Object? gender = null,
    Object? job = null,
    Object? jobLevel = null,
    Object? level = null,
    Object? exp = null,
    Object? expRate = null,
    Object? guildName = freezed,
    Object? image = null,
    Object? dateCreate = freezed,
    Object? accessFlag = freezed,
    Object? liberationQuestClearFlag = freezed,
  }) {
    return _then(_value.copyWith(
      date: freezed == date
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as String?,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      worldName: null == worldName
          ? _value.worldName
          : worldName // ignore: cast_nullable_to_non_nullable
              as String,
      gender: null == gender
          ? _value.gender
          : gender // ignore: cast_nullable_to_non_nullable
              as String,
      job: null == job
          ? _value.job
          : job // ignore: cast_nullable_to_non_nullable
              as String,
      jobLevel: null == jobLevel
          ? _value.jobLevel
          : jobLevel // ignore: cast_nullable_to_non_nullable
              as String,
      level: null == level
          ? _value.level
          : level // ignore: cast_nullable_to_non_nullable
              as int,
      exp: null == exp
          ? _value.exp
          : exp // ignore: cast_nullable_to_non_nullable
              as int,
      expRate: null == expRate
          ? _value.expRate
          : expRate // ignore: cast_nullable_to_non_nullable
              as String,
      guildName: freezed == guildName
          ? _value.guildName
          : guildName // ignore: cast_nullable_to_non_nullable
              as String?,
      image: null == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String,
      dateCreate: freezed == dateCreate
          ? _value.dateCreate
          : dateCreate // ignore: cast_nullable_to_non_nullable
              as String?,
      accessFlag: freezed == accessFlag
          ? _value.accessFlag
          : accessFlag // ignore: cast_nullable_to_non_nullable
              as String?,
      liberationQuestClearFlag: freezed == liberationQuestClearFlag
          ? _value.liberationQuestClearFlag
          : liberationQuestClearFlag // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$CharacterInfoImplCopyWith<$Res>
    implements $CharacterInfoCopyWith<$Res> {
  factory _$$CharacterInfoImplCopyWith(
          _$CharacterInfoImpl value, $Res Function(_$CharacterInfoImpl) then) =
      __$$CharacterInfoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'date') String? date,
      @JsonKey(name: 'character_name') String name,
      @JsonKey(name: 'world_name') String worldName,
      @JsonKey(name: 'character_gender') String gender,
      @JsonKey(name: 'character_class') String job,
      @JsonKey(name: 'character_class_level') String jobLevel,
      @JsonKey(name: 'character_level') int level,
      @JsonKey(name: 'character_exp') int exp,
      @JsonKey(name: 'character_exp_rate') String expRate,
      @JsonKey(name: 'character_guild_name') String? guildName,
      @JsonKey(name: 'character_image') String image,
      @JsonKey(name: 'character_date_create') String? dateCreate,
      @JsonKey(name: 'access_flag') String? accessFlag,
      @JsonKey(name: 'liberation_quest_clear_flag')
      String? liberationQuestClearFlag});
}

/// @nodoc
class __$$CharacterInfoImplCopyWithImpl<$Res>
    extends _$CharacterInfoCopyWithImpl<$Res, _$CharacterInfoImpl>
    implements _$$CharacterInfoImplCopyWith<$Res> {
  __$$CharacterInfoImplCopyWithImpl(
      _$CharacterInfoImpl _value, $Res Function(_$CharacterInfoImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? date = freezed,
    Object? name = null,
    Object? worldName = null,
    Object? gender = null,
    Object? job = null,
    Object? jobLevel = null,
    Object? level = null,
    Object? exp = null,
    Object? expRate = null,
    Object? guildName = freezed,
    Object? image = null,
    Object? dateCreate = freezed,
    Object? accessFlag = freezed,
    Object? liberationQuestClearFlag = freezed,
  }) {
    return _then(_$CharacterInfoImpl(
      date: freezed == date
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as String?,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      worldName: null == worldName
          ? _value.worldName
          : worldName // ignore: cast_nullable_to_non_nullable
              as String,
      gender: null == gender
          ? _value.gender
          : gender // ignore: cast_nullable_to_non_nullable
              as String,
      job: null == job
          ? _value.job
          : job // ignore: cast_nullable_to_non_nullable
              as String,
      jobLevel: null == jobLevel
          ? _value.jobLevel
          : jobLevel // ignore: cast_nullable_to_non_nullable
              as String,
      level: null == level
          ? _value.level
          : level // ignore: cast_nullable_to_non_nullable
              as int,
      exp: null == exp
          ? _value.exp
          : exp // ignore: cast_nullable_to_non_nullable
              as int,
      expRate: null == expRate
          ? _value.expRate
          : expRate // ignore: cast_nullable_to_non_nullable
              as String,
      guildName: freezed == guildName
          ? _value.guildName
          : guildName // ignore: cast_nullable_to_non_nullable
              as String?,
      image: null == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String,
      dateCreate: freezed == dateCreate
          ? _value.dateCreate
          : dateCreate // ignore: cast_nullable_to_non_nullable
              as String?,
      accessFlag: freezed == accessFlag
          ? _value.accessFlag
          : accessFlag // ignore: cast_nullable_to_non_nullable
              as String?,
      liberationQuestClearFlag: freezed == liberationQuestClearFlag
          ? _value.liberationQuestClearFlag
          : liberationQuestClearFlag // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$CharacterInfoImpl
    with DiagnosticableTreeMixin
    implements _CharacterInfo {
  const _$CharacterInfoImpl(
      {@JsonKey(name: 'date') required this.date,
      @JsonKey(name: 'character_name') required this.name,
      @JsonKey(name: 'world_name') required this.worldName,
      @JsonKey(name: 'character_gender') required this.gender,
      @JsonKey(name: 'character_class') required this.job,
      @JsonKey(name: 'character_class_level') required this.jobLevel,
      @JsonKey(name: 'character_level') required this.level,
      @JsonKey(name: 'character_exp') required this.exp,
      @JsonKey(name: 'character_exp_rate') required this.expRate,
      @JsonKey(name: 'character_guild_name') required this.guildName,
      @JsonKey(name: 'character_image') required this.image,
      @JsonKey(name: 'character_date_create') required this.dateCreate,
      @JsonKey(name: 'access_flag') required this.accessFlag,
      @JsonKey(name: 'liberation_quest_clear_flag')
      required this.liberationQuestClearFlag});

  factory _$CharacterInfoImpl.fromJson(Map<String, dynamic> json) =>
      _$$CharacterInfoImplFromJson(json);

  @override
  @JsonKey(name: 'date')
  final String? date;
  @override
  @JsonKey(name: 'character_name')
  final String name;
  @override
  @JsonKey(name: 'world_name')
  final String worldName;
  @override
  @JsonKey(name: 'character_gender')
  final String gender;
  @override
  @JsonKey(name: 'character_class')
  final String job;
  @override
  @JsonKey(name: 'character_class_level')
  final String jobLevel;
  @override
  @JsonKey(name: 'character_level')
  final int level;
  @override
  @JsonKey(name: 'character_exp')
  final int exp;
  @override
  @JsonKey(name: 'character_exp_rate')
  final String expRate;
  @override
  @JsonKey(name: 'character_guild_name')
  final String? guildName;
  @override
  @JsonKey(name: 'character_image')
  final String image;
  @override
  @JsonKey(name: 'character_date_create')
  final String? dateCreate;
  @override
  @JsonKey(name: 'access_flag')
  final String? accessFlag;
  @override
  @JsonKey(name: 'liberation_quest_clear_flag')
  final String? liberationQuestClearFlag;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'CharacterInfo(date: $date, name: $name, worldName: $worldName, gender: $gender, job: $job, jobLevel: $jobLevel, level: $level, exp: $exp, expRate: $expRate, guildName: $guildName, image: $image, dateCreate: $dateCreate, accessFlag: $accessFlag, liberationQuestClearFlag: $liberationQuestClearFlag)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'CharacterInfo'))
      ..add(DiagnosticsProperty('date', date))
      ..add(DiagnosticsProperty('name', name))
      ..add(DiagnosticsProperty('worldName', worldName))
      ..add(DiagnosticsProperty('gender', gender))
      ..add(DiagnosticsProperty('job', job))
      ..add(DiagnosticsProperty('jobLevel', jobLevel))
      ..add(DiagnosticsProperty('level', level))
      ..add(DiagnosticsProperty('exp', exp))
      ..add(DiagnosticsProperty('expRate', expRate))
      ..add(DiagnosticsProperty('guildName', guildName))
      ..add(DiagnosticsProperty('image', image))
      ..add(DiagnosticsProperty('dateCreate', dateCreate))
      ..add(DiagnosticsProperty('accessFlag', accessFlag))
      ..add(DiagnosticsProperty(
          'liberationQuestClearFlag', liberationQuestClearFlag));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CharacterInfoImpl &&
            (identical(other.date, date) || other.date == date) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.worldName, worldName) ||
                other.worldName == worldName) &&
            (identical(other.gender, gender) || other.gender == gender) &&
            (identical(other.job, job) || other.job == job) &&
            (identical(other.jobLevel, jobLevel) ||
                other.jobLevel == jobLevel) &&
            (identical(other.level, level) || other.level == level) &&
            (identical(other.exp, exp) || other.exp == exp) &&
            (identical(other.expRate, expRate) || other.expRate == expRate) &&
            (identical(other.guildName, guildName) ||
                other.guildName == guildName) &&
            (identical(other.image, image) || other.image == image) &&
            (identical(other.dateCreate, dateCreate) ||
                other.dateCreate == dateCreate) &&
            (identical(other.accessFlag, accessFlag) ||
                other.accessFlag == accessFlag) &&
            (identical(
                    other.liberationQuestClearFlag, liberationQuestClearFlag) ||
                other.liberationQuestClearFlag == liberationQuestClearFlag));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      date,
      name,
      worldName,
      gender,
      job,
      jobLevel,
      level,
      exp,
      expRate,
      guildName,
      image,
      dateCreate,
      accessFlag,
      liberationQuestClearFlag);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CharacterInfoImplCopyWith<_$CharacterInfoImpl> get copyWith =>
      __$$CharacterInfoImplCopyWithImpl<_$CharacterInfoImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CharacterInfoImplToJson(
      this,
    );
  }
}

abstract class _CharacterInfo implements CharacterInfo {
  const factory _CharacterInfo(
      {@JsonKey(name: 'date') required final String? date,
      @JsonKey(name: 'character_name') required final String name,
      @JsonKey(name: 'world_name') required final String worldName,
      @JsonKey(name: 'character_gender') required final String gender,
      @JsonKey(name: 'character_class') required final String job,
      @JsonKey(name: 'character_class_level') required final String jobLevel,
      @JsonKey(name: 'character_level') required final int level,
      @JsonKey(name: 'character_exp') required final int exp,
      @JsonKey(name: 'character_exp_rate') required final String expRate,
      @JsonKey(name: 'character_guild_name') required final String? guildName,
      @JsonKey(name: 'character_image') required final String image,
      @JsonKey(name: 'character_date_create') required final String? dateCreate,
      @JsonKey(name: 'access_flag') required final String? accessFlag,
      @JsonKey(name: 'liberation_quest_clear_flag')
      required final String? liberationQuestClearFlag}) = _$CharacterInfoImpl;

  factory _CharacterInfo.fromJson(Map<String, dynamic> json) =
      _$CharacterInfoImpl.fromJson;

  @override
  @JsonKey(name: 'date')
  String? get date;
  @override
  @JsonKey(name: 'character_name')
  String get name;
  @override
  @JsonKey(name: 'world_name')
  String get worldName;
  @override
  @JsonKey(name: 'character_gender')
  String get gender;
  @override
  @JsonKey(name: 'character_class')
  String get job;
  @override
  @JsonKey(name: 'character_class_level')
  String get jobLevel;
  @override
  @JsonKey(name: 'character_level')
  int get level;
  @override
  @JsonKey(name: 'character_exp')
  int get exp;
  @override
  @JsonKey(name: 'character_exp_rate')
  String get expRate;
  @override
  @JsonKey(name: 'character_guild_name')
  String? get guildName;
  @override
  @JsonKey(name: 'character_image')
  String get image;
  @override
  @JsonKey(name: 'character_date_create')
  String? get dateCreate;
  @override
  @JsonKey(name: 'access_flag')
  String? get accessFlag;
  @override
  @JsonKey(name: 'liberation_quest_clear_flag')
  String? get liberationQuestClearFlag;
  @override
  @JsonKey(ignore: true)
  _$$CharacterInfoImplCopyWith<_$CharacterInfoImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
