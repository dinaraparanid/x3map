import 'package:freezed_annotation/freezed_annotation.dart';

extension type SectorLink(String value) {}

class SectorLinkConverter implements JsonConverter<SectorLink, String> {
  const SectorLinkConverter();

  @override
  SectorLink fromJson(String json) => SectorLink(json);

  @override
  String toJson(SectorLink object) => object.value;
}
