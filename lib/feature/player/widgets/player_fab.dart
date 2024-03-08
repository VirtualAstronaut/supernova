import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:supernova/misc/misc.dart';

class PlayerFab extends ConsumerWidget {
  const PlayerFab({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return FloatingActionButton.extended(
      onPressed: () => onPressed(context),
      icon: const Icon(Icons.search),
      label: const Text('Search'),
    );
  }

  void onPressed(BuildContext context) {
    context.push(AppRoutes.search);
  }
}
