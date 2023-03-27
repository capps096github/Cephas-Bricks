import '{{app_name}}_exporter.dart';


void main() {
  WidgetsFlutterBinding.ensureInitialized();

  //
  runApp(
    const ProviderScope(
      child: {{app_name.pascalCase()}}(),
    ),
  );
}
