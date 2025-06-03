import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:iconsax/iconsax.dart';
import 'package:shoe_buy/features/authentication/screens/logIn/logIn.dart';
import 'package:shoe_buy/utils/constants/sizes.dart';

class emailVerificationScreen extends StatelessWidget {
  const emailVerificationScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          IconButton(
            onPressed: () => Get.offAll(() => const LoginScreen()),
            icon: const Icon(CupertinoIcons.clear),
          ),
        ],
      ),
      body: const SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(SSizes.defaultSpace),
          child: Column(
            children: [
              ///image
              ///no assets for the image yet
              ///subtitle
              ///buttons
            ],
          ),
        ),
      ),
    );
  }
}
