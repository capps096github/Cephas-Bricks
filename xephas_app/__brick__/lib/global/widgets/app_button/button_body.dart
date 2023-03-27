import '../../../calcut_exporter.dart';

class ButtonBody extends ConsumerWidget {
  const ButtonBody({
    super.key,
    required this.buttonColor,
    required this.toolTip,
    required this.text,
    required this.textColor,
    required this.iconData,
    required this.onTap,
    required this.isHovered,
    this.iconWidget,
    required this.isSmallButton,
  });

  final bool isHovered, isSmallButton;

  final Color buttonColor;
  final String? toolTip;
  final String text;
  final Color textColor;
  final IconData? iconData;
  final VoidCallback onTap;

  final Widget? iconWidget;

  @override
  Widget build(BuildContext context, ref) {
    final buttonTextStyle = Theme.of(context).textTheme.labelLarge!.copyWith(
          fontWeight: FontWeight.w900,
          fontFamily: calcutFontFamily,
        );

    VisualDensity density = Theme.of(context).visualDensity;

    final width = MediaQuery.of(context).size.width;

    // responsiveness
    final calcutResponsive = ref.watch(calcutResponsiveProvider(context));

    final isDesktop = calcutResponsive.isDesktopScreen;

    /// True if It has an Icon
    final hasIconData = (iconData != null);
    final hasIconWidget = (iconWidget != null);

    //
    return AnimatedContainer(
      width: isSmallButton ? null : (isDesktop ? width * .6 : width),
      duration: fiftyMilliseconds,
      decoration: BoxDecoration(
        color: isHovered ? buttonColor.withOpacity(.15) : calcutTransparent,
        borderRadius: BorderRadius.circular(8),
      ),
      padding: isHovered ? padding2 : (isDesktop ? padding2 : padding0),
      clipBehavior: Clip.antiAlias,
      // for good looking UI o mobile we set this height to 42
      height: isDesktop ? 56 : calcutButtonHeight,
      child: Tooltip(
        message: toolTip ?? text,
        textStyle: TextStyle(color: buttonColor),
        decoration: BoxDecoration(
          color: textColor,
          borderRadius: BorderRadius.circular(4),
        ),
        child: (hasIconData || hasIconWidget)
            ? ElevatedButton.icon(
                onPressed: onTap,
                style: ElevatedButton.styleFrom(
                  backgroundColor: buttonColor,
                  foregroundColor: textColor,
                  elevation: isHovered ? 8 : 0,
                  shadowColor: textColor.withOpacity(.15),
                  visualDensity: density,
                  textStyle: buttonTextStyle,
                ),
                label: Text(
                  text,
                  maxLines: 1,
                ),
                icon: hasIconData
                    ? Icon(iconData, color: textColor)
                    : iconWidget!,
              )
            : ElevatedButton(
                onPressed: onTap,
                style: ElevatedButton.styleFrom(
                  backgroundColor: buttonColor,
                  foregroundColor: textColor,
                  elevation: isHovered ? 8 : 0,
                  visualDensity: density,
                  shadowColor: textColor.withOpacity(.15),
                  textStyle: buttonTextStyle,
                ),
                child: Text(
                  text,
                  maxLines: 1,
                ),
              ),
      ),
    );
  }
}
