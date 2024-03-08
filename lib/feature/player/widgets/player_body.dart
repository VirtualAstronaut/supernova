import 'package:flutter/material.dart';
import 'package:supernova/feature/player/provider/provider.dart';

/// {@template player_body}
/// Body of the PlayerPage.
///
/// Add what it does
/// {@endtemplate}
class PlayerBody extends ConsumerWidget {
  /// {@macro player_body}
  const PlayerBody({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final count = ref.watch(playerProvider);
    return Text(count.toString());
  }
}
