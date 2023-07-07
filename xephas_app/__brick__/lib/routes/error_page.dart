import '../../{{app_name.snakeCase()}}_exporter.dart';

class {{app_name.pascalCase()}}ErrorScreen extends StatelessWidget {
  const {{app_name.pascalCase()}}ErrorScreen({
    super.key,
    required this.error,
    });

  // error object
  final Exception? error;

  @override
  Widget build(BuildContext context) {
     // TODO: beautify this error screen
    return Scaffold(
      appBar: AppBar(title: const Text("Page Not Found")),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SelectableText(error.toString()),
            TextButton(
              onPressed: () => context.go(homePath),
              child: const Text('Go to Home'),
            ),
          ],
        ),
      ),
    );
  }
}