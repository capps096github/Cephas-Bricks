import '../../{{app_name}}_exporter.dart';

// riverpod_annotaion
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'theme_provider.g.dart';

@riverpod
ThemeData {{app_name.camelCase()}}Theme ({{app_name.pascalCase()}}ThemeRef ref) {
  return {{app_name.pascalCase()}}Theme.light;
}