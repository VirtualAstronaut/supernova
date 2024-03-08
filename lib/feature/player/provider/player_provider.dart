import 'package:riverpod/riverpod.dart';

final playerProvider = StateNotifierProvider.autoDispose((ref) {
  return Player();
});

class Player extends StateNotifier<int> {
  Player() : super(0);

  void increment() => state++;
  void decrement() => state--;
}
