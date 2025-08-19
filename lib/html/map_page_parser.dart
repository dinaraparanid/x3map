import 'package:html/dom.dart';
import 'package:x3map/entity/entity.dart';

final class MapPageParser {
  MapPageParser._();

  static Map<SectorLink, Sector> parse(Element html) => Map.fromEntries(
    html
      .querySelector('table[background="mapbgr.png"]')!
      .querySelectorAll('td')
      .where((elem) => elem.children.firstOrNull?.localName == 'table')
      .map((sectorElem) {
        final sectorDataElem = sectorElem.querySelector('a[href]')!;
        final title = sectorDataElem.text;
        final link = SectorLink(sectorDataElem.attributes['href']!);
        return MapEntry(link, Sector(title: title, link: link));
      })
  );
}
