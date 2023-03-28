
import '../../{{app_name}}_exporter.dart';


// TODO make this provider based by generating the theme provider in the provider folder
final {{app_name.camelCase()}}Theme = {{app_name.pascalCase()}}Theme.light;

class {{app_name.pascalCase()}}Theme {
  
    static ThemeData get light {

      // text theme
      final TextTheme lightTheme = ThemeData.light().textTheme;

      // TODO put app font here, default is Lato
      const textStyleFunction = GoogleFonts.lato;

      return ThemeData(
      useMaterial3: true,
      brightness: Brightness.light,
      colorSchemeSeed: {{app_name.camelCase()}}Color,
      //* -- Visual Density
      visualDensity: VisualDensity.adaptivePlatformDensity,
      //* -- Appbar
      appBarTheme: AppBarTheme(
        centerTitle: true,
        backgroundColor: {{app_name.camelCase()}}Color,
        titleTextStyle: GoogleFonts.poppins(
          fontSize: 20,
          fontWeight: FontWeight.w700,
          color: {{app_name.camelCase()}}White,
        ),
      ),
      //* -- tooltip
      tooltipTheme: TooltipThemeData(
        textStyle: const TextStyle(color: {{app_name.camelCase()}}Color),
        decoration: BoxDecoration(
          color: thumbsAccent,
          borderRadius:borderRadius4,
        ),
      ),
      //* -- text button
      textButtonTheme: TextButtonThemeData(
        style: ButtonStyle(
          padding: MaterialStateProperty.all(
           padding16
          ),
        ),
      ),
      //* Text Theme
      textTheme: TextTheme(
        displayLarge: textStyleFunction(textStyle: textTheme.displayLarge),
        displayMedium: textStyleFunction(textStyle: textTheme.displayMedium),
        displaySmall: textStyleFunction(textStyle: textTheme.displaySmall),
        headlineLarge: textStyleFunction(textStyle: textTheme.headlineLarge),
        headlineMedium: textStyleFunction(textStyle: textTheme.headlineMedium),
        headlineSmall: textStyleFunction(textStyle: textTheme.headlineSmall),
        titleLarge: textStyleFunction(textStyle: textTheme.titleLarge),
        titleMedium: textStyleFunction(textStyle: textTheme.titleMedium),
        titleSmall: textStyleFunction(textStyle: textTheme.titleSmall),
        bodyLarge: textStyleFunction(textStyle: textTheme.bodyLarge),
        bodyMedium: textStyleFunction(textStyle: textTheme.bodyMedium),
        bodySmall: textStyleFunction(textStyle: textTheme.bodySmall),
        labelLarge: textStyleFunction(textStyle: textTheme.labelLarge),
        labelMedium: textStyleFunction(textStyle: textTheme.labelMedium),
        labelSmall: textStyleFunction(textStyle: textTheme.labelSmall),
      ),
    );
    }
}