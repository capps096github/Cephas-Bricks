import 'package:flutter/cupertino.dart';

import '../../{{app_name.snakeCase()}}_exporter.dart';

class {{app_name.pascalCase()}}Placeholder extends StatelessWidget {
  ///This is a placeholder widget used to render blank sample screens in the app
  const {{app_name.pascalCase()}}Placeholder({super.key, required this.title});

  /// title text for the screen
  final String title;
  
  @override
  Widget build(BuildContext context) {
    
    return Container(
      color: {{app_name.camelCase()}}RandomColor,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Center(
            child: Icon(
              CupertinoIcons.circle_grid_hex_fill,
              color: {{app_name.camelCase()}}White,
              size: 80,
            ),
          ),

          const VerticalSpace(of: spacing16),

          // title
          Text(
            title + {{app_name.camelCase()}}RandomColor.toString(),
            style: const TextStyle(color: {{app_name.camelCase()}}White),
          ),
        ],
      ),
    );
  }
}
