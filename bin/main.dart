import 'dart:convert';
import 'package:x3map/x3map.dart';

Future<void> main() async {
  final sectorJsonList = await X3MapRetriever
    .retrieve(X3Game.terranConflict)
    .map((s) => s.toJson())
    .toList();

  print(jsonEncode(sectorJsonList));
}
