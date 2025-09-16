import 'package:bilizen/inject/inject.dart';
import 'package:bilizen/package/account_manager/account_manager.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'list_provider.freezed.dart';
part 'list_provider.g.dart';

@Riverpod(keepAlive: true)
class LikeListProvider extends _$LikeListProvider {
  @override
  LikeListState build() {
    return const LikeListState.loading();
  }

  set selectedIndex(int index) {
    final currentState = state;
    if (currentState is _Success) {
      state = LikeListState.success(
        items: currentState.items,
        selectedIndex: index,
      );
    }
  }

  Future<void> fetch() async {
    final user = getIt<AccountManager>().loginStatus.value!;
    final favList = await (await user.user).favLists;
    state = LikeListState.success(
      items: favList
          .map((fav) => LikeListItem(id: fav.mlid, name: fav.title))
          .toList(),
      selectedIndex: -1,
    );
  }
}

@freezed
sealed class LikeListState with _$LikeListState {
  const factory LikeListState.loading() = _Loading;
  const factory LikeListState.success({
    required List<LikeListItem> items,
    required int selectedIndex,
  }) = _Success;
}

@freezed
sealed class LikeListItem with _$LikeListItem {
  const factory LikeListItem({
    required int id,
    required String name,
  }) = _LikeListItem;
}
