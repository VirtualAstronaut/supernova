import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class PlayerFab extends ConsumerWidget {
  const PlayerFab({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return FloatingActionButton.extended(
      onPressed: onPressed,
      icon: const Icon(Icons.search),
      label: const Text('Search'),
    );
  }

  void onPressed() {}
}
