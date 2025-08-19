import 'package:html/dom.dart';
import 'package:http/http.dart' as http;
import 'package:html/parser.dart' as html_parser;
import 'package:windows1251/windows1251.dart';

final class PageLoader {
  static const _headerUserAgent = 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/138.0.0.0 Safari/537.36';
  static const _headerAccept = 'text/html,application/xhtml+xml,application/xml;q=0.9,image/avif,image/webp,image/apng,*/*;q=0.8,application/signed-exchange;v=b3;q=0.7';
  static const _headerAcceptEncoding = 'gzip, deflate, br, zstd';
  static const _headerAcceptLanguage = 'ru-RU,ru;q=0.9,en-US;q=0.8,en;q=0.7';

  PageLoader._();

  static Future<Element> load(String link) => http.get(
    Uri.parse(link),
    headers: {
      'User-Agent': _headerUserAgent,
      'Accept': _headerAccept,
      'Accept-Encoding': _headerAcceptEncoding,
      'Accept-Language': _headerAcceptLanguage,
    },
  ).then((response) {
    if (response.statusCode != 200) {
      throw Exception('Failed to fetch x3map: Error ${response.statusCode}');
    }

    return html_parser.parse(windows1251.decode(response.body.codeUnits)).body!;
  });
}
