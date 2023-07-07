import '../../{{app_name.snakeCase()}}_exporter.dart';

///* this provides the default router delegate for the app
final goRouterProvider = Provider<GoRouter>((ref) {
  return {{app_name.camelCase()}}Router;
});

// router delegate
final {{app_name.camelCase()}}Router = GoRouter(
  initialLocation: initialPath,
  restorationScopeId: {{app_name.camelCase()}}AppId,
  routes: [
    //* home page
    GoRoute(
      path: homePath,
      builder: (context, state) => const {{app_name.pascalCase()}}Home(),
    ),

    //* auth
    GoRoute(
      path: authPath,
      builder: (context, state) => const {{app_name.pascalCase()}}Auth(),
    ),

    //* user

    // * settings
    GoRoute(
      path: settingsPath,
      builder: (context, state) => const {{app_name.pascalCase()}}Settings(),
    ),
  ],

  redirect: (_, state) {
    //TODO if the user is not logged in, redirect to the auth page

    //TODO if the user is logged in, don't redirect to any page just continue with the initial path
    return null;
  },
  errorBuilder: (context, state) => {{app_name.pascalCase()}}ErrorScreen(error: state.error),
  // log diagnostic info for your routes
  debugLogDiagnostics: true,
);
