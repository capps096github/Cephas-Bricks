import '../{{app_name}}_exporter.dart';

class {{app_name.pascalCase()}} extends ConsumerWidget {
  ///This is the root of our {{app_name}} app
  const {{app_name.pascalCase()}}({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final goRouter = ref.watch(goRouterProvider);
    // final goRouter = goRouterProvider;

    final {{app_name.camelCase()}}Theme = ref.watch({{app_name.camelCase()}}ThemeProvider);

    return MaterialApp.router(
      // -- Router --
      routerConfig: goRouter,

      // -- Theme --
      color: {{app_name.camelCase()}}Color,
      theme: {{app_name.camelCase()}}Theme,

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
