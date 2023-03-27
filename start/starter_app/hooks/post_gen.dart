import 'dart:io';
import 'package:mason/mason.dart';

// post_gen - executed immediately after the generation step
void run(HookContext context) async {
  final progress = context.logger.progress('Installing packages');

  // to add multiple packages just put a space between them
  // Run `flutter pub add` after generation.
//   # app dependencies
// flutter pub add drift sqlite3_flutter_libs path_provider path flutter_riverpod
// # dev dependencies
// flutter pub add --dev drift_dev build_runner

// * Add Packages
  // await Process.run(
  //   'flutter',
  //   ['pub', 'add', 'flutter_riverpod'],
  // );

// * Add Dev Packages
  // await Process.run(
  //   'flutter',
  //   ['pub', 'add', '--dev', 'build_runner'],
  // );

  progress.complete();
}
