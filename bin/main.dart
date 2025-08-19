import 'package:x3map/x3map.dart';

Future<void> main() async {
  await X3MapRetriever
    .retrieve(X3Game.albionPrelude)
    .listen(print)
    .asFuture();
}
