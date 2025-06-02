import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:shoe_buy/utils/constants/scolors.dart';
import 'package:shoe_buy/utils/constants/sizes.dart';
import 'package:shoe_buy/utils/constants/text_strings.dart';
import 'package:shoe_buy/utils/helpers/helper_functions.dart';

// ignore: camel_case_types
class signupScreen extends StatelessWidget {
  const signupScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = SHelperFunctions.isDarkMode(context);

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
                            decoration: InputDecoration(
                              labelText: STexts.firstNameLabel,
                              labelStyle: TextStyle(
                                color: dark ? Colors.white : Colors.black87,
                              ),
                              floatingLabelStyle: const TextStyle(
                                color: SColor.primaryColor,
                              ),

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
                              fillColor:
                                  dark ? Colors.black : Colors.grey.shade200,
                              filled: true,
                              prefixIcon: const Icon(Iconsax.user),
                            ),
                          ),
                        ),
                        const SizedBox(width: SSizes.spaceBtwInputFields),
                        Expanded(
                          child: TextFormField(
                            expands: false,
                            decoration: InputDecoration(
                              labelText: STexts.lastNameLabel,
                              labelStyle: TextStyle(
                                color: dark ? Colors.white : Colors.black87,
                              ),
                              floatingLabelStyle: const TextStyle(
                                color: SColor.primaryColor,
                              ),

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
                              fillColor:
                                  dark ? Colors.black : Colors.grey.shade200,
                              filled: true,
                              prefixIcon: const Icon(Iconsax.user),
                            ),
                          ),
                        ),
                      ],
                    ),

                    const SizedBox(height: SSizes.spaceBtwInputFields),

                    ///username
                    TextFormField(
                      expands: false,
                      decoration: InputDecoration(
                        labelText: STexts.usernameLabel,
                        labelStyle: TextStyle(
                          color: dark ? Colors.white : Colors.black87,
                        ),
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
                        prefixIcon: const Icon(Iconsax.user_edit),
                      ),
                    ),

                    const SizedBox(height: SSizes.spaceBtwInputFields),

                    ///email
                    TextFormField(
                      expands: false,
                      decoration: InputDecoration(
                        labelText: STexts.emailLabel,
                        labelStyle: TextStyle(
                          color: dark ? Colors.white : Colors.black87,
                        ),
                        floatingLabelStyle: const TextStyle(
                          color: SColor.primaryColor,
                        ),

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
                        prefixIcon: const Icon(Iconsax.direct),
                      ),
                    ),
                    const SizedBox(height: SSizes.spaceBtwInputFields),

                    ///number
                    TextFormField(
                      expands: false,
                      decoration: InputDecoration(
                        labelText: STexts.phoneNumberLabel,
                        labelStyle: TextStyle(
                          color: dark ? Colors.white : Colors.black87,
                        ),
                        floatingLabelStyle: const TextStyle(
                          color: SColor.primaryColor,
                        ),

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
                        prefixIcon: const Icon(Iconsax.call),
                      ),
                    ),
                    const SizedBox(height: SSizes.spaceBtwInputFields),

                    ///password
                    TextFormField(
                      obscureText: true,
                      decoration: InputDecoration(
                        labelText: STexts.passwordLabel,
                        labelStyle: TextStyle(
                          color: dark ? Colors.white : Colors.black87,
                        ),
                        floatingLabelStyle: const TextStyle(
                          color: SColor.primaryColor,
                        ),

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
                        prefixIcon: const Icon(Iconsax.password_check),
                        suffixIcon: const Icon(Iconsax.eye_slash),
                      ),
                    ),
                  ],
                ),
              ),

              ///TODO

              ///terms and conditions
              // code to review
              const SizedBox(height: SSizes.spaceBtwSections),
              Row(
                children: [
                  SizedBox(
                    width: 24,
                    height: 24,
                    child: Checkbox(value: false, onChanged: (value) {}),
                  ),
                  const SizedBox(width: SSizes.spaceBtwItems),
                  Expanded(
                    child: Text.rich(
                      TextSpan(
                        children: [
                          TextSpan(
                            text: STexts.agreeToTerms,
                            style: Theme.of(context).textTheme.bodySmall,
                          ),
                          TextSpan(
                            text: STexts.termsOfService,
                            style: Theme.of(
                              context,
                            ).textTheme.bodySmall?.copyWith(
                              color: Colors.blue,
                              decoration: TextDecoration.underline,
                            ),
                          ),
                          TextSpan(
                            text: ' and ',
                            style: Theme.of(context).textTheme.bodySmall,
                          ),
                          TextSpan(
                            text: STexts.privacyPolicy,
                            style: Theme.of(
                              context,
                            ).textTheme.bodySmall?.copyWith(
                              color: Colors.blue,
                              decoration: TextDecoration.underline,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),

              ///sign up button
              const SizedBox(height: SSizes.spaceBtwSections),
              SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                  onPressed: () {},
                  child: const Text(STexts.createAccount),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
