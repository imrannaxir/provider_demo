import 'package:flutter_riverpod/flutter_riverpod.dart';

final countryProvider = Provider<String>((ref) {
  return 'Pakistan';
});

final cityProvider = Provider<String>((ref) {
  return 'Bahawalpur';
});
