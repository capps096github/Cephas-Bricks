
import '../../{{app_name.snakeCase()}}_exporter.dart';

class {{app_name.pascalCase()}}ResponsiveBuilder extends ConsumerWidget {
  const {{app_name.pascalCase()}}ResponsiveBuilder({
    required this.mobile,
    this.tablet,
    required this.desktop,
    super.key,
  });

  /// widget to be displayed on mobile
  final Widget mobile;

  /// widget to be displayed on tablet
  final Widget? tablet;

  /// widget to be displayed on desktop
  final Widget desktop;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    // responsiveness
    final {{app_name.camelCase()}}Responsive = ref.watch({{app_name.camelCase()}}ResponsiveProvider(context));

    final isDesktop = {{app_name.camelCase()}}Responsive.isDesktopScreen;
    final isTablet = {{app_name.camelCase()}}Responsive.isTabletScreen;

    if (isDesktop) {
      return desktop;
    }
    // If width it less then 1024 and more then 600 we consider it as tablet
    else if (isTablet) {
      return tablet ?? desktop;
    }
    // Or less then that we called it mobile
    else {
      return mobile;
    }
  }
}
