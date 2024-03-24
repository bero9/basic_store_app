import 'package:flutter/material.dart';

import 'enums.dart';


class TBrandTitletext extends StatelessWidget {
  const TBrandTitletext({
    super.key,
    required this.title,
    this.maxLine = 1,
    this.color,
    this.textAlign = TextAlign.center,
    this.brandtextSize = TextSize.small,
  });

  final String title;
  final int maxLine;
  final Color? color;
  final TextAlign? textAlign;
  final TextSize? brandtextSize;

  @override
  Widget build(BuildContext context) {
    return Text(
      title,
      textAlign: textAlign,
      overflow: TextOverflow.ellipsis,
      maxLines: maxLine,
      style: brandtextSize == TextSize.small
          ? Theme.of(context).textTheme.labelMedium!.apply(color: color)
          : brandtextSize == TextSize.medium
              ? Theme.of(context).textTheme.bodyLarge!.apply(color: color)
              : brandtextSize == TextSize.large
                  ? Theme.of(context).textTheme.titleLarge!.apply(color: color)
                  : Theme.of(context).textTheme.bodyMedium!.apply(color: color),
    );
  }
}
