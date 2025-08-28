import 'package:bilizen/package/future_class/future_class_generator.dart';
import 'package:build/build.dart';
import 'package:source_gen/source_gen.dart';

Builder futureClassBuilder(BuilderOptions options) =>
    LibraryBuilder(FutureClassGenerator(), generatedExtension: '.future.dart');
