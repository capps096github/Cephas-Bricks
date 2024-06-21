import 'dart:io';
import 'package:mason/mason.dart';

Future<void> run(HookContext context) async {
  final progress = context.logger.progress('...');

  // * All complete
  context.logger.success('\n✓ App Generated successfully, Happy Coding!\n');

  // * Install packages
  context.logger.info('\n- To Complete Set Up, run the command below:');
  context.logger.info('\ndart run lib/setup.dart\n');

  progress.complete();
}
