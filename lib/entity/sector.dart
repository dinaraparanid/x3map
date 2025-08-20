import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:x3map/entity/race.dart';
import 'package:x3map/entity/sector_link.dart';

part 'sector.freezed.dart';
part 'sector.g.dart';

@freezed
abstract class Sector with _$Sector {
  const factory Sector({
    required String title,
    @SectorLinkConverter() required SectorLink link,
    Race? race,
    @SectorLinkConverter() SectorLink? northGate,
    @SectorLinkConverter() SectorLink? southGate,
    @SectorLinkConverter() SectorLink? westGate,
    @SectorLinkConverter() SectorLink? eastGate,
  }) = _Sector;

  factory Sector.fromJson(Map<String, dynamic> json) => _$SectorFromJson(json);
}
