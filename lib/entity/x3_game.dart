enum X3Game {
  reunion(mapUrl: 'https://x3-reunion.x3tc.net/x3_map/'),
  terranConflict(mapUrl: 'https://x3tc.net/x3_tc_map/'),
  albionPrelude(mapUrl: 'https://x3ap.x3tc.net/x3_tc_map/'),
  farnhamLegacy(mapUrl: 'https://x3fl.x3tc.net/x3_fl_map/');

  final String mapUrl;
  const X3Game({required this.mapUrl});
}
