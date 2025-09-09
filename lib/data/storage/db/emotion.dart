import 'package:injectable/injectable.dart';
import 'package:objectbox/objectbox.dart';

@singleton
class EmotionStorage {}

@Entity()
class EmotionPackage {
  @Id(assignable: true)
  final int id;

  EmotionPackage({required this.id});
}
