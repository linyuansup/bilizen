import 'package:bilizen/model/user.dart';

class FavList {
  final int mlid;
  final User user;
  final String title;
  final int count;

  FavList({
    required this.mlid,
    required this.user,
    required this.title,
    required this.count,
  });
}
