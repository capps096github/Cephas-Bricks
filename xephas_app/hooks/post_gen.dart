import 'dart:io';
import 'package:mason/mason.dart';

Future<void> run(HookContext context) async {
  final progress =
      context.logger.progress('Almost done ... Now Installing packages');

  // add the following packages to pubspec.yaml
  // as they appear in {{app_name}}_exporter.dart
  // cupertino_icons, flutter_riverpod, go_router, url_launcher, intl, google_fonts, animations
  await Process.run(
    'dart',
    [
      'pub',
      'add',
      // packages here
      'go_router',
      'url_launcher',
      'intl',
      'google_fonts',
      'animations',
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
  context.logger.success('\nPackages installed successfully!');

  //* Format generated files with dart format .
  // Run `dart format` after generation.
  context.logger.info('\nFormatting generated files ...');

  //* Format generated files with dart format .
  await Process.run('dart', ['format', '.']);

  // format complete
  context.logger.success('\nFormat complete!');

  // * All complete
  progress.complete();
}
