import '../../{{app_name}}_exporter.dart';

// riverpod_annotaion
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'responsive_provider.g.dart';

@riverpod
{{app_name.pascalCase()}}Responsive {{app_name.camelCase()}}Responsive(
    {{app_name.pascalCase()}}ResponsiveRef ref, BuildContext context) {
  return {{app_name.pascalCase()}}Responsive(context: context);
}
