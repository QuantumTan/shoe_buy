import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:shoe_buy/features/authentication/controllers/on_boarding_controller.dart';
import 'package:shoe_buy/utils/constants/scolors.dart';
import 'package:shoe_buy/utils/constants/sizes.dart';
import 'package:shoe_buy/utils/device/device_util.dart';
import 'package:shoe_buy/utils/helpers/helper_functions.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class OnBoardingNavigation extends StatelessWidget {
  const OnBoardingNavigation({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    //create the instance of teh controller
    final controller = onBoaardingController.instance;
    final dark = SHelperFunctions.isDarkMode(context);

    return Positioned(
      left: SSizes.defaultSpace,
      bottom: DeviceUtil.getBottomNavigationBarHeight() + 20,
      child: SmoothPageIndicator(
        controller: controller.pageController,
        onDotClicked: controller.dotNavigationClick,
        count: 3,
        effect: ExpandingDotsEffect(
          activeDotColor: dark ? SColor.dark : SColor.light,
          dotHeight: 5,
        ),
      ),
    );
  }
}