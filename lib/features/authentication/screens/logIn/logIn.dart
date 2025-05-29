import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';
import 'package:shoe_buy/commons/styles/spacing_styles.dart';
import 'package:shoe_buy/commons/widgets-login-signup/form_divider.dart';
import 'package:shoe_buy/commons/widgets-login-signup/social_icons.dart';
import 'package:shoe_buy/features/authentication/screens/logIn/widgets/logInForm.dart';
import 'package:shoe_buy/features/authentication/screens/logIn/widgets/logInHeader.dart';
import 'package:shoe_buy/utils/constants/image_strings.dart';
import 'package:shoe_buy/utils/constants/scolors.dart';
import 'package:shoe_buy/utils/constants/sizes.dart';
import 'package:shoe_buy/utils/constants/text_strings.dart';
import 'package:shoe_buy/utils/helpers/helper_functions.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = SHelperFunctions.isDarkMode(context);

    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: SSpacingStyle.paddingWithAppBar,
          child: Column(
            children: [
              //logo--title--subtitle
              logInHeader(dark: dark),

              //form
              logInForm(dark: dark),

              //divider
              FormDivider(dividerText: STexts.orSignInWith.capitalize!),
              const SizedBox(height: SSizes.spaceBtwSections),

              //footer
              socialButtonFooter(),
            ],
          ),
        ),
      ),
    );
  }
}
