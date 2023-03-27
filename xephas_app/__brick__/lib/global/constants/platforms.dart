import 'package:flutter/foundation.dart';

/// check if the current platform is Windows
final bool is{{app_name.pascalCase()}}Windows = (defaultTargetPlatform == TargetPlatform.windows);

/// check if the current platform is Windows
final bool is{{app_name.pascalCase()}}Android = (defaultTargetPlatform == TargetPlatform.android);

/// check if the current platform is Windows
final bool is{{app_name.pascalCase()}}iOs = (defaultTargetPlatform == TargetPlatform.iOS);

/// check if the current platform is Windows or Web
const bool is{{app_name.pascalCase()}}Web = (kIsWeb);

/// check if the current platform is Windows or Web
final bool is{{app_name.pascalCase()}}WebOrWindows = (is{{app_name.pascalCase()}}Windows || is{{app_name.pascalCase()}}Web);

///This variable declares that if we are on phone
///, no mouse region, else we gat a mouse region
final isPhone = (is{{app_name.pascalCase()}}Android || is{{app_name.pascalCase()}}iOs);
