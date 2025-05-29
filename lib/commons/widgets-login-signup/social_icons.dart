import 'package:flutter/material.dart';
import 'package:shoe_buy/utils/constants/image_strings.dart';
import 'package:shoe_buy/utils/constants/scolors.dart';
import 'package:shoe_buy/utils/constants/sizes.dart';

class socialButtonFooter extends StatelessWidget {
  const socialButtonFooter({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
          decoration: BoxDecoration(
            border: Border.all(color: SColor.dark),
            borderRadius: BorderRadius.circular(100),
          ),
          child: IconButton(
            onPressed: () {},
            icon: const Image(
              width: SSizes.iconMd,
              height: SSizes.iconMd,
              image: AssetImage(SImageStrings.google),
            ),
          ),
        ),
        const SizedBox(width: SSizes.spaceBtwItems),
        Container(
          decoration: BoxDecoration(
            border: Border.all(color: SColor.dark),
            borderRadius: BorderRadius.circular(100),
          ),
          child: IconButton(
            onPressed: () {},
            icon: const Image(
              width: SSizes.iconMd,
              height: SSizes.iconMd,
              image: AssetImage(SImageStrings.facebook),
            ),
          ),
        ),
      ],
    );
  }
}
