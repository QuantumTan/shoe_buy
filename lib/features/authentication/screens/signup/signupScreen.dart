import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:shoe_buy/utils/constants/sizes.dart';
import 'package:shoe_buy/utils/constants/text_strings.dart';

// ignore: camel_case_types
class signupScreen extends StatelessWidget {
  const signupScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(SSizes.defaultSpace),
          child: Column(
            children: [
              //title
              Text(
                STexts.signupTitle,
                style: Theme.of(context).textTheme.headlineMedium,
              ),
              const SizedBox(height: SSizes.spaceBtwSections),

              //form
              Form(
                child: Column(
                  children: [
                    Row(
                      children: [
                        Expanded(
                          child: TextFormField(
                            expands: false,
                            decoration: const InputDecoration(
                              labelText: STexts.firstNameLabel,
                              prefixIcon: Icon(Iconsax.user),
                            ),
                          ),
                        ),
                        const SizedBox(width: SSizes.spaceBtwInputFields),
                        Expanded(
                          child: TextFormField(
                            expands: false,
                            decoration: const InputDecoration(
                              labelText: STexts.lastNameLabel,
                              prefixIcon: Icon(Iconsax.user),
                            ),
                          ),
                        ),
                      ],
                    ),

                    const SizedBox(height: SSizes.spaceBtwInputFields),

                    ///username
                    TextFormField(
                      expands: false,
                      decoration: const InputDecoration(
                        labelText: STexts.usernameLabel,
                        prefixIcon: Icon(Iconsax.user_edit),
                      ),
                    ),

                    const SizedBox(height: SSizes.spaceBtwInputFields),

                    ///email
                    TextFormField(
                      expands: false,
                      decoration: const InputDecoration(
                        labelText: STexts.emailLabel,
                        prefixIcon: Icon(Iconsax.direct),
                      ),
                    ),
                    const SizedBox(height: SSizes.spaceBtwInputFields),

                    ///number
                    TextFormField(
                      expands: false,
                      decoration: const InputDecoration(
                        labelText: STexts.phoneNumberLabel,
                        prefixIcon: Icon(Iconsax.call),
                      ),
                    ),
                    const SizedBox(height: SSizes.spaceBtwInputFields),

                    ///password
                    TextFormField(
                      obscureText: true,
                      decoration: const InputDecoration(
                        labelText: STexts.passwordLabel,
                        prefixIcon: Icon(Iconsax.password_check),
                        suffixIcon: Icon(Iconsax.eye_slash),
                      ),
                    ),
                  ],
                ),
              ),

              ///TODO

              ///terms and conditions
              const SizedBox(height: SSizes.spaceBtwSections),
              Row(children: []),

              ///sign up button
            ],
          ),
        ),
      ),
    );
  }
}
