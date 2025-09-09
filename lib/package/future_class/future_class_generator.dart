import 'dart:async';
import 'package:analyzer/dart/element/element2.dart';
import 'package:analyzer/dart/element/type.dart';
import 'package:build/build.dart';
import 'package:source_gen/source_gen.dart';
import 'package:bilizen/package/future_class/annotations.dart';

class FutureClassGenerator extends GeneratorForAnnotation<FutureClass> {
  @override
  FutureOr<String> generateForAnnotatedElement(
    Element2 element,
    ConstantReader annotation,
    BuildStep buildStep,
  ) async {
    if (element is! ClassElement2) {
      throw InvalidGenerationSourceError(
        'FutureClass can only be applied to classes.',
        element: element,
      );
    }

    return _generateFutureClass(element, buildStep);
  }

  String _generateFutureClass(ClassElement2 element, BuildStep buildStep) {
    final className = element.name3;
    final generatedClassName = '_\$$className';
    final buffer = StringBuffer();

    buffer.writeln("// ignore_for_file: unused_element");

    buffer.writeln(
      "part of '${buildStep.inputId.changeExtension('.dart').pathSegments.last}';",
    );
    buffer.writeln();

    buffer.writeln(
      'abstract class $generatedClassName extends FutureClassBase {',
    );

    final futureDataGetters = <PropertyAccessorElement2>[];
    for (final accessor in element.getters2) {
      final futureDataAnnotation = TypeChecker.typeNamed(
        FutureData,
      ).firstAnnotationOf(accessor);
      if (futureDataAnnotation != null) {
        futureDataGetters.add(accessor);
      }
    }

    final abstractGeneratedGetters = <String>[];

    for (final getter in futureDataGetters) {
      final getterName = getter.name3!;
      final returnType = getter.returnType;
      final annotation = TypeChecker.typeNamed(
        FutureData,
      ).firstAnnotationOf(getter);

      if (annotation != null) {
        final loaderName = annotation.getField('loader')?.toStringValue();
        if (loaderName != null) {
          buffer.writeln(_generateGetter(getterName, returnType, loaderName));
          buffer.writeln(_generateSetter(getterName, returnType));
          buffer.writeln(_generateClearer(getterName));
          if (!abstractGeneratedGetters.contains(loaderName)) {
            buffer.writeln(_generateAbstractLoader(loaderName));
            abstractGeneratedGetters.add(loaderName);
          }
        }
      }
    }

    buffer.writeln('}');
    return buffer.toString();
  }

  String _generateAbstractLoader(String loaderName) {
    return '''
  Future<void> $loaderName();
''';
  }

  String _generateGetter(
    String getterName,
    DartType returnType,
    String loaderName,
  ) {
    final keyName = '_${getterName}Key';
    final buffer = StringBuffer();

    buffer.writeln('  static const String $keyName = \'$getterName\';');
    buffer.writeln();
    buffer.writeln('  $returnType get \$$getterName async {');
    buffer.writeln('    if (isCached($keyName)) {');
    buffer.writeln(
      '      return getCached<${_getGenericType(returnType)}>($keyName)!;',
    );
    buffer.writeln('    }');
    buffer.writeln();
    buffer.writeln('      await $loaderName();');
    buffer.writeln(
      '      return getCached<${_getGenericType(returnType)}>($keyName)!;',
    );
    buffer.writeln('  }');
    buffer.writeln();

    return buffer.toString();
  }

  String _generateSetter(String getterName, DartType returnType) {
    final keyName = '_${getterName}Key';
    final setterName = 'set${_capitalize(getterName)}';
    final genericType = _getGenericType(returnType);

    return '''
  void $setterName($genericType value) {
    setCached($keyName, value);
  }

''';
  }

  String _generateClearer(String getterName) {
    final keyName = '_${getterName}Key';
    final clearerName = 'clear${_capitalize(getterName)}';

    return '''
  void $clearerName() {
    clearCached($keyName);
  }

''';
  }

  String _getGenericType(DartType type) {
    if (type.isDartAsyncFuture) {
      final futureType = type as InterfaceType;
      if (futureType.typeArguments.isNotEmpty) {
        return futureType.typeArguments.first.getDisplayString();
      }
    }
    return type.getDisplayString();
  }

  String _capitalize(String str) {
    if (str.isEmpty) return str;
    return str[0].toUpperCase() + str.substring(1);
  }
}
