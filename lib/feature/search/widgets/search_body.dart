import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:supernova/feature/search/provider/provider.dart';
import 'package:supernova/ui/widgets/app_text_field.dart';

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
    return const Column(
      children: [
        Padding(
          padding: EdgeInsets.all(8.0),
          child: _SearchBar(),
        )
      ],
    );
  }
}

class _SearchBar extends HookConsumerWidget {
  const _SearchBar({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return AppTextField(
      onChanged: (text) => onSearchChanged(text, ref),
    );
  }

  void onSearchChanged(String query, WidgetRef ref) {
    final notifier = ref.read(searchServiceProvider.notifier);
    notifier.search(query);
  }
}
