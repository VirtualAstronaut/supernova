import 'package:flutter/material.dart';
import 'package:supernova/feature/player/player.dart';
import 'package:supernova/ui/theme/theme.dart';

import 'misc/misc.dart';

void main() {
  runApp(const ProviderScope(child: MainApp()));
}

class MainApp extends ConsumerWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return MaterialApp.router(
      routerConfig: AppRouterConfig.router,
      theme: ref.watch(themeDataProvider),
    );
  }
}
