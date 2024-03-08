import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:supernova/feature/search/provider/provider.dart';

/// {@template search_body}
/// Body of the SearchPage.
///
/// Shows search layout
/// {@endtemplate}
class SearchBody extends HookConsumerWidget {
  /// {@macro search_body}
  const SearchBody({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final count = ref.watch(searchProvider);
    return Text(count.toString());
  }
}
