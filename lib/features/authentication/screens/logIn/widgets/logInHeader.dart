import 'package:flutter/material.dart';
import 'package:shoe_buy/utils/constants/image_strings.dart';
import 'package:shoe_buy/utils/constants/sizes.dart';
import 'package:shoe_buy/utils/constants/text_strings.dart';

class logInHeader extends StatelessWidget {
  const logInHeader({super.key, required this.dark});

  final bool dark;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Image(
          height: 300,
          image: AssetImage(
            dark ? SImageStrings.loginDark : SImageStrings.loginLight,
          ), //image to change
        ),
        Text(
          STexts.logInTitle,
          style: Theme.of(context).textTheme.headlineMedium,
        ),
        const SizedBox(height: SSizes.sm),
        Text(
          STexts.LogInSubtitle,
          style: Theme.of(context).textTheme.bodyMedium,
        ),
      ],
    );
  }
}
