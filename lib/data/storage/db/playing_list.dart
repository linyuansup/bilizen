import 'package:bilizen/objectbox.g.dart';
import 'package:injectable/injectable.dart';
// ignore: unnecessary_import
import 'package:objectbox/objectbox.dart';

@Entity()
class PlayList {
  @Id()
  int id;
  @Index()
  String videoBvid;
  int pIndex;

  PlayList({
    this.id = 0,
    required this.videoBvid,
    required this.pIndex,
  });
}

@singleton
class PlayListService {
  final Store _store;
  late final box = _store.box<PlayList>();

  PlayListService(this._store);

  List<PlayList> getAll() {
    return box.getAll();
  }

  void clearAndPutAll(List<PlayList> items) {
    box.removeAll();
    box.putMany(items);
  }
}
