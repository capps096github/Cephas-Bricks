import '../../{{app_name}}_exporter.dart';

/// THis is a dot in a bullet=like format
/// 

class {{app_name.pascalCase()}}Dot extends StatelessWidget {
  const {{app_name.pascalCase()}}Dot({super.key,
      this.dotColor = {{app_name.camelCase()}}Color,
    this.dotDiameter = spacing8,
    this.margin = margin4,
  });


  // color of the dot
  final Color dotColor;

  // diameter of the dot
  final double dotDiameter;

  // margin of the dot
  final EdgeInsetsGeometry margin;

  @override
  Widget build(BuildContext context) {
    
     return Container(
      width: dotDiameter,
      height: dotDiameter,
      margin: margin,
      decoration: BoxDecoration(
        color: dotColor,
        shape: BoxShape.circle,
      ),
    );
  }
}

