import 'dart:io';

import 'global/printer/crinter.dart';

/// Run all commands to add dependencies to your app and get it set up
Future<void> main() async {
  crinter(' -- Setting up! --\n');

  await addDependencies();
  await buildRunner();
  await runLints();
  await formatFiles();
  await fixIssues();
  //
  await deleteSetupFile().then((result) async {
    crinter('\n✓ All Set Up. Happy Coding!\n', isSuccess: true);
    await deleteCrinterFile();
  });
}

/// delete setup file
Future<void> deleteSetupFile() async {
  crinter('- Deleting Set Up File!');
  // file path
  const filePath = 'lib/setup.dart';

  final file = File(filePath);

  // delete this file after running the script
  try {
    await file.delete().then(
          (value) =>
              crinter('✓ File deleted successfully!\n\n', isSuccess: true),
        );
  } catch (e) {
    crinter('Error deleting file: $e', isError: true);
  }
}

// delete crinter file
Future<void> deleteCrinterFile() async {
  crinter('- Deleting Crinter!');
  // file path
  const filePath = 'lib/global/printer/crinter.dart';

  final file = File(filePath);

  // delete this file after running the script
  try {
    await file.delete().then(
          (value) => crinter('✓ Crinter File deleted successfully!\n\n',
              isSuccess: true),
        );
  } catch (e) {
    crinter('Error deleting file: $e', isError: true);
  }
}

/// Add dependencies to your app
Future<void> addDependencies() async {
  crinter('- Adding Dependencies!');
  await Process.run(
    'dart',
    [
      'pub',
      'add',
      'go_router',
      'url_launcher',
      'intl',
      'uuid',
      'gap',
      'google_fonts',
      'animations',
      'cached_network_image',
      'cupertino_icons',
      'restart_app',
      'flextras',
      'flutter_svg',
      'flutter_riverpod',
      'riverpod_annotation',
      'dev:build_runner',
      'dev:custom_lint',
      'dev:riverpod_generator',
      'dev:riverpod_lint',
      'dev:very_good_analysis',
    ],
  ).then((result) async {
    if (result.exitCode == 0) {
      crinter('✓ Dependencies added successfully!\n\n', isSuccess: true);
    } else {
      crinter('x Failed to add dependencies.', isError: true);
      crinter(result.stderr, isError: true);
    }
  });
}

/// run lints
Future<void> runLints() async {
  crinter('- Adding Custom Lints');

  // command to add lints to your app
  await Process.run('dart', ['run', 'custom_lint'])
      .then((_) => crinter('✓ Lints added successfully!\n\n', isSuccess: true));
}

/// Format generated files with dart format
Future<void> formatFiles() async {
  //* Format generated files with dart format .
  // Run `dart format` after generation.
  crinter('- Formatting all generated files');

  // command to format all generated files
  await Process.run('dart', ['format', '.']).then(
    (_) => crinter('✓ Formatting completed successfully!\n\n', isSuccess: true),
  );
}

/// Run build runner to generate files
Future<void> buildRunner() async {
  //* Run build runner to generate files
  crinter('- Running build runner to generate files');

  // command to run build runner
  await Process.run('dart', [
    'run',
    'build_runner',
    'build',
    '--delete-conflicting-outputs',
  ]).then(
    (_) =>
        crinter('✓ Build runner completed successfully!\n\n', isSuccess: true),
  );
}

/// Fix any issues with the generated files
Future<void> fixIssues() async {
  //* Fix any issues with the generated files
  // Run `dart format` after generation.
  crinter('- Fixing any issues with the generated files');

  // command to format all generated files
  await Process.run('dart', ['fix', '--apply'])
      .then((_) => crinter('✓ Fix successful!\n\n', isSuccess: true));
}
