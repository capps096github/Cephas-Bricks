import 'package:flutter/cupertino.dart';

import '../../app_exporter.dart';

class AppPlaceholder extends StatelessWidget {
  ///This is a placeholder widget used to render blank sample screens in the app
  const AppPlaceholder({super.key, required this.title});

  /// title text for the screen
  final String title;

  @override
  Widget build(BuildContext context) {
    return Container(
      color: appRandomColor,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Center(
            child: Icon(
              CupertinoIcons.circle_grid_hex_fill,
              color: appWhite,
              size: 80,
            ),
          ),

          const VerticalSpace(of: spacing16),

          // title
          Text(
            title + appRandomColor.toString(),
            style: const TextStyle(color: appWhite),
          ),
        ],
      ),
    );
  }
}
