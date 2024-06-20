import '../app_exporter.dart';

class {{app_name.pascalCase()}} extends ConsumerWidget {
  ///This is the root of our {{app_name.snakeCase()}} app
  const {{app_name.pascalCase()}}({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final goRouter = ref.watch(goRouterProvider);
  
    final appTheme = ref.watch(appThemeProvider);

    return MaterialApp.router(
      // -- Router --
      routerConfig: goRouter,

      // -- Theme --
      color: appColor,
      theme: appTheme,

      // -- Title --
      title: {{app_name.camelCase()}}Title,
      restorationScopeId: {{app_name.camelCase()}}AppId,

      // -- Debug Mode --
      debugShowCheckedModeBanner: false,

      // -- Bouncing Scroll Behavior --
      scrollBehavior: const MaterialScrollBehavior().copyWith(
        physics: const BouncingScrollPhysics(),
        scrollbars: false,
      ),
    );
  }
}
