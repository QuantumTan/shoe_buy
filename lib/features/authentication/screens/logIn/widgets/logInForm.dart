import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:shoe_buy/utils/constants/scolors.dart';
import 'package:shoe_buy/utils/constants/sizes.dart';
import 'package:shoe_buy/utils/constants/text_strings.dart';

class logInForm extends StatelessWidget {
  const logInForm({
    super.key,
    required this.dark,
  });

  final bool dark;

  @override
  Widget build(BuildContext context) {
    return Form(
      child: Padding(
        padding: const EdgeInsets.symmetric(
          vertical: SSizes.spaceBtwSections,
        ),
        child: Column(
          children: [
            //email
            TextFormField(
              decoration: InputDecoration(
                prefixIcon: Icon(Iconsax.direct_right),
                labelText: STexts.emailLabel,
                labelStyle: TextStyle(
                  color: dark ? Colors.white : Colors.black87,
                ),
    
                // Add these properties
                floatingLabelStyle: TextStyle(
                  color: SColor.primaryColor,
                ),
                enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(
                    color: dark ? Colors.white : Colors.black87,
                  ),
                  borderRadius: BorderRadius.circular(8),
                ),
                focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(
                    color: SColor.primaryColor,
                    width: 2,
                  ),
                  borderRadius: BorderRadius.circular(8),
                ),
                fillColor: dark ? Colors.black : Colors.grey.shade200,
                filled: true,
              ),
            ),
            const SizedBox(height: SSizes.spaceBtwInputFields),
            //password
            TextFormField(
              decoration: InputDecoration(
                prefixIcon: Icon(Iconsax.password_check),
                labelText: STexts.passwordLabel,
                labelStyle: TextStyle(
                  color: dark ? Colors.white : Colors.black87,
                ),
                floatingLabelStyle: TextStyle(
                  color: SColor.primaryColor,
                ),
                suffix: Icon(Iconsax.eye_slash),
    
                enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(
                    color: dark ? Colors.white : Colors.black87,
                  ),
                  borderRadius: BorderRadius.circular(8),
                ),
                focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(
                    color: SColor.primaryColor,
                    width: 2,
                  ),
                  borderRadius: BorderRadius.circular(8),
                ),
                fillColor: dark ? Colors.black : Colors.grey.shade200,
                filled: true,
              ),
              obscureText:
                  true, // hide pass text
            ),
            const SizedBox(height: SSizes.spaceBtwInputFields / 2),
    
            //remember me and forgot pass
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                //remmber
                Row(
                  children: [
                    Checkbox(value: true, onChanged: (value) {}),
                    const Text(STexts.rememberMe),
                  ],
                ),
                //forgot
                TextButton(
                  onPressed: () {},
                  child: const Text(
                    STexts.forgotPassword,
                    style: TextStyle(color: SColor.primaryColor),
                  ),
                ),
              ],
            ),
            const SizedBox(height: SSizes.spaceBtwSections),
    
            //sign in button
            SizedBox(
              width: double.infinity,
              height: SSizes.buttonHeight + 30,
              child: ElevatedButton(
                onPressed: () {},
                child: Text(
                  STexts.signIn,
                  style: TextStyle(
                    color: dark ? Colors.black87 : Colors.white,
                  ),
                ),
              ),
            ),
            const SizedBox(height: SSizes.spaceBtwSections - 20),
            //create acc button
            SizedBox(
              width: double.infinity,
              height: SSizes.buttonHeight + 30,
              child: OutlinedButton(
                onPressed: () {},
                child: Text(
                  STexts.createAccount,
                  style: TextStyle(
                    color: dark ? Colors.black87 : Colors.white,
                  ),
                ),
              ),
            ),
            const SizedBox(height: SSizes.spaceBtwSections),
          ],
        ),
      ),
    );
  }
}

