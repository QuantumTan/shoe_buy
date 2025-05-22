import 'package:flutter/material.dart';
import 'package:shoe_buy/utils/constants/scolors.dart';
import 'package:shoe_buy/utils/constants/sizes.dart';
import 'package:shoe_buy/utils/device/device_util.dart';
import 'package:shoe_buy/utils/helpers/helper_functions.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class onBoardingNavigatioin extends StatelessWidget {
  const onBoardingNavigatioin({
    super.key,
  });

  @override
  Widget build(BuildContext context) {

    final dark = SHelperFunctions.isDarkMode(context);

    return Positioned(
      bottom: DeviceUtil.getBottomNavigationBarHeight() + 20,
      left: SSizes.defaultSpace,
    
      child: SmoothPageIndicator(
        controller: PageController(),
        count: 3,
        effect: ExpandingDotsEffect(
          activeDotColor: dark ? SColor.dark : SColor.light,
          dotHeight: 5,
        ),
      ),
    );
  }
}
