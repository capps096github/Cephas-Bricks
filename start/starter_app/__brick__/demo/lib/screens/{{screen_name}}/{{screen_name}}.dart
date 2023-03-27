
{{^is_consumer_widget}}
class {{screen_name.pascalCase()}} extends StatelessWidget {
  const {{screen_name.pascalCase()}}({super.key});

  @override
  Widget build(BuildContext context) {
    return PlaceHolder();
  }
}
{{/is_consumer_widget}}



{{#is_consumer_widget}}
class {{screen_name.pascalCase()}} extends ConsumerWidget {
  const {{screen_name.pascalCase()}}({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return PlaceHolder();
  }
}
{{/is_consumer_widget}}