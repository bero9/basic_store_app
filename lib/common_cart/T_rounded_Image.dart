
import 'package:flutter/material.dart';

import 'colors.dart';


class TRoundedImage extends StatelessWidget {
  const TRoundedImage({
    super.key,
    this.width,
    this.height,
    required this.imageUrl,
    this.applyImageRaduis= true,
    this.border,
    this.background = TColors.light,
    this.fit = BoxFit.contain,
    this.padding,
    this.isNetworkImage= false,
    this.onPressed,
    this.borderRadios=16,
  });

  final double? width , height ;
  final String imageUrl;
  final bool applyImageRaduis ;
  final BoxBorder? border;
  final Color background;
  final BoxFit? fit;
  final EdgeInsetsGeometry? padding;
  final bool isNetworkImage ;
  final VoidCallback? onPressed;
  final double borderRadios;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPressed,
      child: Container(
        width: width,
        height: height,
        padding: padding,
        decoration: BoxDecoration(
          border: border,
          color: background,
          borderRadius: BorderRadius.circular(borderRadios),
        ),
        child: ClipRRect(
            borderRadius: applyImageRaduis
                ? BorderRadius.circular(borderRadios)
                : BorderRadius.zero,
            child: Image(
              image: isNetworkImage
                  ? NetworkImage(imageUrl)
                  : AssetImage(imageUrl) as ImageProvider,
              fit: fit,
            )),
      ),
    );
  }
}
