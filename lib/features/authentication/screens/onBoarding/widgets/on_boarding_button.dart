import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:shoe_buy/features/authentication/controllers/on_boarding_controller.dart';
import 'package:shoe_buy/utils/constants/scolors.dart';
import 'package:shoe_buy/utils/constants/sizes.dart';
import 'package:shoe_buy/utils/device/device_util.dart';
import 'package:shoe_buy/utils/helpers/helper_functions.dart';

class onBoardingButton extends StatelessWidget {
  const onBoardingButton({
    super.key,
  });



  @override
  Widget build(BuildContext context) {

  final dark = SHelperFunctions.isDarkMode(context);

    return Positioned(
      right: SSizes.defaultSpace,
      bottom: DeviceUtil.getBottomNavigationBarHeight(),
      child: ElevatedButton(onPressed: (){onBoaardingController.instance.nextPage();},
      style: ElevatedButton.styleFrom(shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(18), ), backgroundColor: dark ? SColor.primaryColor : Colors.black54),
      child: const Icon(Iconsax.arrow_right_3),),);
  }
}