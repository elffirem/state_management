import 'package:flutter_riverpod/flutter_riverpod.dart';

final lightSwitchProvider = StateProvider<bool>((ref) {
  return false; // The light is initially off
});
