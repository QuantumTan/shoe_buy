import 'package:flutter/material.dart';
import 'package:shoe_buy/utils/constants/sizes.dart';
import 'package:shoe_buy/utils/helpers/helper_functions.dart';

class onBoardingpage extends StatelessWidget {
  const onBoardingpage({
    super.key,
    required this.image,
    required this.title,
    required this.subTitle,
  });

  final String image, title, subTitle;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(SSizes.defaultSpace),
      child: Column(
        children: [
          Image(
            width: SHelperFunctions.getScreenWidth(context) * 0.8,
            height: SHelperFunctions.screenHeight(context) * 0.6,
            image: AssetImage(image),
          ),

          Text(
            title,
            style: Theme.of(context).textTheme.headlineMedium,
            textAlign: TextAlign.center,
          ),

          const SizedBox(height: SSizes.spaceBtwItems),
          Text(
            subTitle,
            style: Theme.of(context).textTheme.bodyMedium,
            textAlign: TextAlign.center,
          ),
        ],
      ),
    );
  }
}
