import 'package:dartx/dartx.dart';
import 'package:html/dom.dart';
import 'package:x3map/entity/entity.dart';

final class SectorPageParser {
  SectorPageParser._();

  static Sector parse({
    required Element html,
    required Sector sector,
    required Map<SectorLink, Sector> sectors,
  }) {
    final dataRows = html
      .querySelectorAll('tr[class="l0"]')
      .toList(growable: false);

    final race = _parseRaceTitle(dataRows[0].children[1].text);
    final northGate = sectors[_findSectorLink(name: 'северные врата', rows: dataRows)]?.link;
    final southGate = sectors[_findSectorLink(name: 'южные врата', rows: dataRows)]?.link;
    final eastGate = sectors[_findSectorLink(name: 'восточные врата', rows: dataRows)]?.link;
    final westGate = sectors[_findSectorLink(name: 'западные врата', rows: dataRows)]?.link;

    return sector.copyWith(
      race: race,
      northGate: northGate,
      southGate: southGate,
      eastGate: eastGate,
      westGate: westGate,
    );
  }

  static Race _parseRaceTitle(String title) => switch (title.toLowerCase()) {
    'земляне' => Race.terran,
    'борон' => Race.boron,
    'телади' => Race.teladi,
    'сплит' => Race.split,
    'ксенон' => Race.xenon,
    'аргон' => Race.argon,
    'паранид' => Race.paranid,
    'пират' => Race.pirate,
    'гонер' => Race.goner,
    'яки' => Race.yaki,
    'хаак' => Race.khaak,
    _ => Race.unclaimed,
  };

  static SectorLink? _findSectorLink({
    required String name,
    required List<Element> rows,
  }) {
    final value = rows
      .firstOrNullWhere((row) =>
        row.firstChild?.text?.toLowerCase().contains(name) == true,
      )
      ?.children[1]
      .querySelector('a[href]')
      ?.attributes['href'];

    return value != null ? SectorLink(value) : null;
  }
}
