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
      .map((tableRowElem) => tableRowElem.children[1])
      .toList(growable: false);

    final race = _parseRaceTitle(dataRows[0].text);
    final northGate = sectors[_parseGateLink(dataRows[5])]?.link;
    final southGate = sectors[_parseGateLink(dataRows[6])]?.link;
    final eastGate = sectors[_parseGateLink(dataRows[7])]?.link;
    final westGate = sectors[_parseGateLink(dataRows[8])]?.link;

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

  static SectorLink? _parseGateLink(Element rowItem) {
    final value = rowItem.querySelector('a[href]')?.attributes['href'];
    return value != null ? SectorLink(value) : null;
  }
}
