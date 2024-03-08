import 'package:flutter/material.dart';
import 'package:supernova/feature/player/player.dart';

import 'misc/misc.dart';

void main() {
  runApp(const ProviderScope(child: MainApp()));
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      routerConfig: AppRouterConfig.router,
    );
  }
}
