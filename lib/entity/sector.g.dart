// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'sector.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_Sector _$SectorFromJson(Map<String, dynamic> json) => _Sector(
  title: json['title'] as String,
  link: const SectorLinkConverter().fromJson(json['link'] as String),
  race: $enumDecodeNullable(_$RaceEnumMap, json['race']),
  northGate: _$JsonConverterFromJson<String, SectorLink>(
    json['northGate'],
    const SectorLinkConverter().fromJson,
  ),
  southGate: _$JsonConverterFromJson<String, SectorLink>(
    json['southGate'],
    const SectorLinkConverter().fromJson,
  ),
  westGate: _$JsonConverterFromJson<String, SectorLink>(
    json['westGate'],
    const SectorLinkConverter().fromJson,
  ),
  eastGate: _$JsonConverterFromJson<String, SectorLink>(
    json['eastGate'],
    const SectorLinkConverter().fromJson,
  ),
);

Map<String, dynamic> _$SectorToJson(_Sector instance) => <String, dynamic>{
  'title': instance.title,
  'link': const SectorLinkConverter().toJson(instance.link),
  'race': _$RaceEnumMap[instance.race],
  'northGate': _$JsonConverterToJson<String, SectorLink>(
    instance.northGate,
    const SectorLinkConverter().toJson,
  ),
  'southGate': _$JsonConverterToJson<String, SectorLink>(
    instance.southGate,
    const SectorLinkConverter().toJson,
  ),
  'westGate': _$JsonConverterToJson<String, SectorLink>(
    instance.westGate,
    const SectorLinkConverter().toJson,
  ),
  'eastGate': _$JsonConverterToJson<String, SectorLink>(
    instance.eastGate,
    const SectorLinkConverter().toJson,
  ),
};

const _$RaceEnumMap = {
  Race.terran: 'terran',
  Race.boron: 'boron',
  Race.teladi: 'teladi',
  Race.split: 'split',
  Race.unclaimed: 'unclaimed',
  Race.xenon: 'xenon',
  Race.argon: 'argon',
  Race.paranid: 'paranid',
  Race.pirate: 'pirate',
  Race.goner: 'goner',
  Race.yaki: 'yaki',
  Race.khaak: 'khaak',
};

Value? _$JsonConverterFromJson<Json, Value>(
  Object? json,
  Value? Function(Json json) fromJson,
) => json == null ? null : fromJson(json as Json);

Json? _$JsonConverterToJson<Json, Value>(
  Value? value,
  Json? Function(Value value) toJson,
) => value == null ? null : toJson(value);
