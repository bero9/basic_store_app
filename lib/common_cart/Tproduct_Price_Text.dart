import 'package:flutter/material.dart';

class TProductPriceText extends StatelessWidget {
  const TProductPriceText({
    super.key,
    this.currencySidn = '\$',
    required this.Price,
    this.maxLines = 1,
    this.isLarg = false,
    this.lineThrought = false,
  });

  final String currencySidn, Price;
  final int maxLines;
  final bool isLarg;
  final bool lineThrought;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10),
      child: Text(
        currencySidn + Price,
        maxLines: maxLines,
        overflow: TextOverflow.ellipsis,
        style: isLarg
            ? Theme
            .of(context)
            .textTheme
            .headlineMedium!
            .apply(decoration: lineThrought ? TextDecoration.lineThrough : null)
            : Theme
            .of(context)
            .textTheme
            .titleLarge!
            .apply(decoration: lineThrought ? TextDecoration.lineThrough : null),
      ),
    );
  }
}
