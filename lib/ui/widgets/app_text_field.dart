import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class AppTextField extends HookConsumerWidget {
  const AppTextField({super.key, this.onChanged});
  final void Function(String text)? onChanged;
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return TextFormField(
      onChanged: onChanged,
    );
  }
}
