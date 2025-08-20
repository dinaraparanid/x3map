import 'package:x3map/entity/entity.dart';
import 'package:x3map/html/html.dart';

final class X3MapRetriever {
  static const _forbiddenBypassDelayMs = 2500;

  X3MapRetriever._();

  static Stream<Sector> retrieve(X3Game game, {int? delay}) async* {
    final mapUrl = game.mapUrl;
    final mapPage = await PageLoader.load(mapUrl);
    final unconnectedSectorMap = MapPageParser.parse(mapPage);
    final unconnectedSectors = unconnectedSectorMap.entries;
    final taskDelay = delay ?? _forbiddenBypassDelayMs;

    for (final MapEntry(key: link, value: sector) in unconnectedSectors) {
      final sectorPage = await PageLoader.load('$mapUrl/$link');

      final connectedSector = SectorPageParser.parse(
        html: sectorPage,
        sector: sector,
        sectors: unconnectedSectorMap,
      );

      yield connectedSector;
      await Future.delayed(Duration(milliseconds: taskDelay));
    }
  }
}