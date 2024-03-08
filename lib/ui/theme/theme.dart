import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'theme.g.dart';

class AppTheme {
  static final textfieldDecorations = InputDecoration(
      border: OutlineInputBorder(
          //  borderSide: BorderSide(
          //   color:
          //  )
          ));
}

@riverpod
ThemeData themeData(ThemeDataRef ref) {
  final isDark = ref.watch(isDarkProvider);
  return isDark ? DarkTheme.getTheme() : ThemeData();
}

@Riverpod(keepAlive: true)
class IsDark extends _$IsDark {
  @override
  bool build() {
    return true;
  }
}

class DarkTheme {
  static final _bgColor = Colors.grey.shade100;
  static ThemeData getTheme() {
    return ThemeData(
      scaffoldBackgroundColor: const Color(0xff282828),
      inputDecorationTheme: darkInputDecoration(),
    );
  }

  static InputDecorationTheme darkInputDecoration() {
    return InputDecorationTheme(
      border: OutlineInputBorder(
        borderSide: BorderSide(
          color: Colors.grey.shade800,
          width: 1,
        ),
      ),
    );
  }
}

class LightTheme {
  static final _bgColor = Colors.grey.shade800;
  static getTheme() {
    ThemeData(
      scaffoldBackgroundColor: _bgColor,
      inputDecorationTheme: inputDecorations(),
    );
  }

  static InputDecorationTheme inputDecorations() {
    return InputDecorationTheme(
      border: OutlineInputBorder(
        borderSide: BorderSide(
          color: Colors.grey.shade800,
          width: 1,
        ),
      ),
    );
  }
}
