
import 'package:flutter/material.dart';

import 'dart:math' as math;

// {{app_name.camelCase()}} Color
const {{app_name.camelCase()}}Color = Color(0xFF{{primary_color_code.upperCase()}});

// {{app_name.camelCase()}} secondary color
const {{app_name.camelCase()}}SecondaryColor = Color(0xFF{{secondary_color_code.upperCase()}});

// {{app_name.camelCase()}} background
const {{app_name.camelCase()}}Background = Color(0xFF{{background_color_code.upperCase()}});

// {{app_name.camelCase()}} white
const {{app_name.camelCase()}}White = Color(0xFFFFFFFF);

// {{app_name.camelCase()}} black
const {{app_name.camelCase()}}Black = Color(0xFF000000);

// {{app_name.camelCase()}} transparent
const {{app_name.camelCase()}}Transparent = Colors.transparent;

// {{app_name.camelCase()}} random color
Color get {{app_name.camelCase()}}RandomColor =>
    Color((math.Random().nextDouble() * 0xFFE3EEFE).toInt()).withOpacity(1.0);

