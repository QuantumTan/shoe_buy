import 'package:flutter/material.dart';
import 'package:shoe_buy/features/authentication/controllers/on_boarding_controller.dart';
import 'package:shoe_buy/utils/constants/scolors.dart';
import 'package:shoe_buy/utils/constants/sizes.dart';
import 'package:shoe_buy/utils/device/device_util.dart';

class onBoardingSkip extends StatelessWidget {
  const onBoardingSkip({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Positioned(
      top: DeviceUtil.getAppBarHeight(),
      right: SSizes.defaultSpace,
      child: TextButton(
        onPressed: () => onBoaardingController.instance.skipPage, //on pressed currently null-- to do
        child: const Text(
          'Skip',
          style: TextStyle(color: SColor.primaryColor),
        ),
      ),
    );
  }
}