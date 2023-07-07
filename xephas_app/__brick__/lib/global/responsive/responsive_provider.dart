
import '../../{{app_name.snakeCase()}}_exporter.dart';

//* this provides the overall responsiveness of our app

final {{app_name.camelCase()}}ResponsiveProvider = Provider.family<SampleAppResponsive, BuildContext>((ref, ctx) {
  return {{app_name.pascalCase()}}Responsive(context: ctx);
});