import 'package:flutter/material.dart';
import 'package:shoe_buy/utils/constants/image_strings.dart';
import 'package:shoe_buy/utils/constants/sizes.dart';
import 'package:shoe_buy/utils/constants/text_strings.dart';
import 'package:shoe_buy/utils/helpers/helper_functions.dart';

class resetPassword extends StatelessWidget {
  const resetPassword({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(automaticallyImplyLeading: false),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(SSizes.defaultSpace),
          child: Column(
            children: [
              //image w/ 60% of screen width
              Image(
                image: AssetImage(SImageStrings.verifyIllustration),
                width: SHelperFunctions.screenWidth() * 0.6,
              ),
              const SizedBox(height: SSizes.spaceBtwSections),

              //title
              Text(
                STexts.resetPasswordTitle,
                style: Theme.of(context).textTheme.headlineMedium,
                textAlign: TextAlign.center,
              ),
              const SizedBox(height: SSizes.spaceBtwItems),
              //subTitle
              Text(
                STexts.resetPasswordSubtitle,
                style: Theme.of(context).textTheme.labelMedium,
                textAlign: TextAlign.center,
              ),
              const SizedBox(height: SSizes.spaceBtwSections),

              //buttons
            ],
          ),
        ),
      ),
    );
  }
}
