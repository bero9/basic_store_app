import 'package:flutter/material.dart';

class TrounddedContainer extends StatelessWidget {
  const TrounddedContainer(
      {super.key,
      this.width,
      this.height,
      this.radios = 16,
      this.padding,
      this.child,
      this.background = Colors.white,
      this.borderColor = Colors.grey,
      this.margin,
      this.showBorder = false});

  final double? width;
  final double? height;
  final double radios;
  final EdgeInsetsGeometry? padding;
  final Widget? child;
  final Color background;
  final Color borderColor;
  final EdgeInsetsGeometry? margin;
  final bool showBorder;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: padding,
      width: width,
      height: height,
      margin: margin,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(radios),
        border: showBorder
            ? Border.all(
                color: borderColor,
              )
            : null,
        color: background,
      ),
      child: child,
    );
  }
}
