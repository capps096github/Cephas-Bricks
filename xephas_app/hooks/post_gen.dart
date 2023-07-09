import 'dart:io';
import 'package:mason/mason.dart';

Future<void> run(HookContext context) async {
  final progress = context.logger.progress('...');

  // * Install packages
  context.logger.info('\n- Installing packages');

  // add the following packages to pubspec.yaml
  // as they appear in {{app_name.snakeCase()}}_exporter.dart
  await Process.run(
    'dart',
    [
      'pub',
      'add',
      // packages here
      'go_router',
      'url_launcher',
      'intl',
      'uuid',
      'google_fonts',
      'animations',
      'cached_network_image',
      'cupertino_icons',
      // riverpod and its generator files
      'flutter_riverpod',
      'riverpod_annotation',
      // riverpod dev dependencies
      'dev:build_runner',
      'dev:custom_lint',
      'dev:riverpod_generator',
      'dev:riverpod_lint'
    ],
  );

  //* Run `flutter packages get` after generation.
  await Process.run('dart', ['pub', 'get']);

  // Packages installed successfully!
  context.logger.success('\n✓ Packages installed successfully!');

  // * Run `dart run custom_lint` to enable riverpod based lints in your project.
  context.logger.info('\n- Adding lints to your app');

  // command to add lints to your app
  await Process.run('dart', ['run', 'custom_lint']);

  // Lints added successfully!
  context.logger.success('\n✓ Lints added successfully!');

  //* Format generated files with dart format .
  // Run `dart format` after generation.
  context.logger.info('\n- Formatting all generated files');

  // command to format all generated files
  await Process.run('dart', ['format', '.']);

  // format complete
  context.logger.success('\n✓ Formatting completed successfully!\n');

  // * All complete
  context.logger.success('\n✓ App Generated successfully, Happy Coding!');

  progress.complete();
}
