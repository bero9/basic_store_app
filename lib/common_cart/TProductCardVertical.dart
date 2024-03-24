
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:storeapp/common_cart/product_title_text.dart';
import 'package:storeapp/common_cart/rounded_container.dart';
import 'package:storeapp/common_cart/sizes.dart';

import 'TBrandTitleWithVerefiedIcon.dart';
import 'TCircularIcon.dart';
import 'T_rounded_Image.dart';
import 'Tproduct_Price_Text.dart';
import 'Tshadow_Style.dart';
import 'colors.dart';
import 'images_string.dart';

class TProductCardVertical extends StatelessWidget {
  const TProductCardVertical({super.key});

  @override
  Widget build(BuildContext context) {

    return GestureDetector(
      onTap: () {},
      child: Container(
        width: 180,
        padding: const EdgeInsets.all(1),
        decoration: BoxDecoration(
          boxShadow: [TShadowStyle.verticalProductShadow],
          borderRadius: BorderRadius.circular(16),
          color:   Colors.white,
        ),
        child: Column(
          children: [
            ///Thumbnail,Wishlist,Button,Discount Tag
            TrounddedContainer(
              height: 150,
              padding: const EdgeInsets.all(8),
              background: Colors.white,
              child: Stack(
                children: [
                   const TRoundedImage(
                       imageUrl: TImage.productcamera, applyImageRaduis: true),

                  ///---Sale Tag
                  Positioned(
                    top: 12,
                    child: TrounddedContainer(
                      radios: 8,
                      background: TColors.secondary.withOpacity(0.8),
                      padding: const EdgeInsets.symmetric(
                          horizontal: TSize.sm, vertical: TSize.xs),
                      child: Text(
                        '25%',
                        style: Theme.of(context)
                            .textTheme
                            .labelLarge!
                            .apply(color: Colors.black),
                      ),
                    ),
                  ),

                  ///favorite Icon Button
                  Positioned(
                      top: 0,
                      right: 0,
                      child: TCircularIcon(

                        icon: Iconsax.heart5,
                        color: Colors.red,
                      ))
                ],
              ),
            ),

            /// -- Details
            const Padding(
              padding: EdgeInsets.only(left: TSize.sm),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  TProductTitleText(
                    title: 'beautiful Black Camera',
                    smalsize: true,
                  ),
                  SizedBox(
                    height: TSize.spaceBetweenItem / 2,
                  ),
                  TBrandTitleWithVerefiedIcon(title: 'Canon',),

                ],
              ),
            ),

            //Todo : Add Spacer() hear to keep the height of each Box same in case 1 or 2 lines of Headings
            const Spacer(),


            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                ///Price
                const Padding(
                  padding: EdgeInsets.only(left: TSize.sm),
                  child: TProductPriceText(Price: '35.5'),
                ),
                Container(
                  decoration: const BoxDecoration(
                      color: TColors.dark,
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(12),
                        bottomRight: Radius.circular(16),
                      )),
                  child: const SizedBox(
                    width: 32 * 1.2,
                    height: 32 * 1.2,
                    child: Center(
                      child: Icon(
                        Iconsax.add,
                        color: Colors.white,
                      ),
                    ),
                  ),
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
