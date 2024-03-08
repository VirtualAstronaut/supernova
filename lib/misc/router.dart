import 'package:go_router/go_router.dart';
import 'package:supernova/feature/search/search.dart';

import '../feature/player/player.dart';

class AppRouterConfig {
  static final router = GoRouter(
    initialLocation: '/',
    routes: [
      GoRoute(
        path: '/',
        builder: (context, state) => const PlayerPage(),
      ),
      GoRoute(
        path: '/search',
        builder: (context, state) => const SearchPage(),
      ),
    ],
  );
}
