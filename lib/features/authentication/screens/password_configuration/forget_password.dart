import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';
import 'package:shoe_buy/features/authentication/screens/password_configuration/reset_password.dart';
import 'package:shoe_buy/utils/constants/sizes.dart';
import 'package:shoe_buy/utils/constants/text_strings.dart';
import 'package:shoe_buy/utils/constants/scolors.dart';

class ForgetPassword extends StatelessWidget {
  const ForgetPassword({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = Theme.of(context).brightness == Brightness.dark;

    return Scaffold(
      appBar: AppBar(),
      body: Padding(
        padding: EdgeInsets.all(SSizes.defaultSpace),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            //headings
            Text(
              STexts.forgotPasswordTitle,
              style: Theme.of(context).textTheme.headlineMedium,
            ),
            const SizedBox(height: SSizes.spaceBtwItems),
            Text(
              STexts.forgotPasswordSubtitle,
              style: Theme.of(context).textTheme.labelMedium,
            ),
            const SizedBox(height: SSizes.spaceBtwSections * 2),

            //textField
            TextFormField(
              decoration: InputDecoration(
                labelText: STexts.emailLabel,
                prefixIcon: const Icon(Iconsax.direct_right),
                labelStyle: TextStyle(
                  color: dark ? Colors.white : Colors.black87,
                ),
                floatingLabelStyle: const TextStyle(color: SColor.primaryColor),
                enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(
                    color: dark ? Colors.white : Colors.black87,
                  ),
                  borderRadius: BorderRadius.circular(8),
                ),
                focusedBorder: OutlineInputBorder(
                  borderSide: const BorderSide(
                    color: SColor.primaryColor,
                    width: 2,
                  ),
                  borderRadius: BorderRadius.circular(8),
                ),
                fillColor: dark ? Colors.black : Colors.grey.shade200,
                filled: true,
              ),
            ),
            const SizedBox(height: SSizes.spaceBtwSections),

            //submit button
            SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                onPressed: () => Get.off(() => ResetPassword()),
                child: const Text(STexts.sendResetLink),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
