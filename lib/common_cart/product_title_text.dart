
import 'package:flutter/material.dart';

class TProductTitleText extends StatelessWidget {
  const TProductTitleText(
      {super.key,
      required this.title,
       this.smalsize=false,
       this.maxline=2,
      this.textAlign=TextAlign.left});

  final String title;
  final bool smalsize;
  final int maxline;
  final TextAlign? textAlign;

  @override
  Widget build(BuildContext context) {
    return Text(
      title,
      style: smalsize?Theme.of(context).textTheme.labelLarge:Theme.of(context).textTheme.titleSmall,
overflow: TextOverflow.ellipsis,
      maxLines: maxline,
      textAlign: textAlign,
    );
  }
}
