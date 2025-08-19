import 'package:x3map/entity/race.dart';
import 'package:x3map/entity/sector_link.dart';

final class Sector {
  final String title;
  final SectorLink link;
  final Race? race;
  final SectorLink? northGate;
  final SectorLink? southGate;
  final SectorLink? westGate;
  final SectorLink? eastGate;

  Sector({
    required this.title,
    required this.link,
    this.race,
    this.northGate,
    this.southGate,
    this.westGate,
    this.eastGate,
  });

  Sector copyWith({
    String? title,
    SectorLink? link,
    Race? race,
    SectorLink? northGate,
    SectorLink? southGate,
    SectorLink? westGate,
    SectorLink? eastGate,
  }) => Sector(
    title: title ?? this.title,
    race: race ?? this.race,
    link: link ?? this.link,
    northGate: northGate ?? this.northGate,
    southGate: southGate ?? this.southGate,
    westGate: westGate ?? this.westGate,
    eastGate: eastGate ?? this.eastGate,
  );

  @override
  bool operator ==(Object other) =>
    identical(this, other) ||
    other is Sector &&
    runtimeType == other.runtimeType &&
    title == other.title &&
    race == other.race &&
    link == other.link &&
    northGate == other.northGate &&
    southGate == other.southGate &&
    westGate == other.westGate &&
    eastGate == other.eastGate;

  @override
  int get hashCode =>
    Object.hash(title, race, link, northGate, southGate, westGate, eastGate);

  @override
  String toString() =>
    'Sector{title: $title, race: $race, link: $link, northGate: $northGate, southGate: $southGate, westGate: $westGate, eastGate: $eastGate}';
}
