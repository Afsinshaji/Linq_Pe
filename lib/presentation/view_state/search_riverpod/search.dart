import 'dart:developer';

import 'package:flutter_riverpod/flutter_riverpod.dart';

final homeSearchProvider = StateProvider(
  (ref) {
    return '';
  },
);
homeSearch(String searching, WidgetRef ref) {
  log('search home riverpod');
  ref.read(homeSearchProvider.notifier).state = searching;
}
final contactSearchProvider = StateProvider(
  (ref) {
    return '';
  },
);
contactSearch(String searching, WidgetRef ref) {
  log('search contact riverpod');
  ref.read(contactSearchProvider.notifier).state = searching;
}
