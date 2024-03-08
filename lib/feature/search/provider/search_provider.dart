import 'package:riverpod/riverpod.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'search_provider.g.dart';

final searchProvider = StateNotifierProvider.autoDispose((ref) {
  return Search();
});

class Search extends StateNotifier<int> {
  Search() : super(0);

  void increment() => state++;
  void decrement() => state--;
}

@riverpod
class SearchService extends _$SearchService {
  @override
  void build() {
    return;
  }
}
