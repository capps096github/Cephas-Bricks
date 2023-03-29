import '../{{app_name}}_exporter.dart';

// riverpod_annotaion
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'go_router_provider.g.dart';

@riverpod
GoRouter goRouter (GoRouterRef ref) {
  return {{app_name}}Router;
}