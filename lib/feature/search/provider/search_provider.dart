import 'dart:developer';

import 'package:riverpod/riverpod.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:youtube_explode_dart/youtube_explode_dart.dart';

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

  void search(String query) async {
    final data = await _searchByName(query);
    for (var i = 0; i < data.length; i++) {
      log(data[i].title);
    }
  }

  Future<VideoSearchList> _searchByName(String query) {
    final ytclient = ref.read(youtubeExplodeProvider);
    return ytclient.search.search(query);
  }
}

@Riverpod(keepAlive: true)
YoutubeExplode youtubeExplode(YoutubeExplodeRef ref) {
  final yt = YoutubeExplode();
  ref.onDispose(() {
    log('yt disposed');
    yt.close();
  });
  return yt;
}
