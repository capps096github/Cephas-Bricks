import '../../{{app_name}}_exporter.dart';

///* this provides the default router delegate for the app
// TODO make this a provider under providers/go_router_provider.dart 

// router delegate
final goRouterProvider = GoRouter(
  initialLocation: initialPath,
  restorationScopeId: {{app_name.camelCase()}}AppId,
  // turn off history tracking in the browser for all navigation
  // routerNeglect: true,
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
    // if the user is not logged in, redirect to the auth page

    // if the user is logged in, don't redirect to any page just continue with the initial path
    return null;
  },
  //
  // refreshListenable: GoRouterRefreshStream(
  //   stream: FirebaseAuth.instance.authStateChanges(),
  // ),
  errorBuilder: (context, state) => {{app_name.pascalCase()}}ErrorScreen(error: state.error),
  // log diagnostic info for your routes
  debugLogDiagnostics: true,
);
