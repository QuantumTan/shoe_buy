import 'package:flutter/material.dart';
import 'package:shoe_buy/features/authentication/screens/onBoarding/widgets/on_boarding_nav.dart';
import 'package:shoe_buy/features/authentication/screens/onBoarding/widgets/on_boarding_page.dart';
import 'package:shoe_buy/features/authentication/screens/onBoarding/widgets/on_boarding_skip.dart';
import 'package:shoe_buy/utils/constants/scolors.dart';
import 'package:shoe_buy/utils/constants/image_strings.dart';
import 'package:shoe_buy/utils/constants/sizes.dart';
import 'package:shoe_buy/utils/constants/text_strings.dart';
import 'package:shoe_buy/utils/device/device_util.dart';
import 'package:shoe_buy/utils/helpers/helper_functions.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class onBoardingScreen extends StatelessWidget {
  const onBoardingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    //controller that will be shared
    final pageController = PageController();
    
    return Scaffold(
      body: Stack(
        children: [
          ///horizontal scrollable pages
          PageView(
            controller: pageController, //controller
            children: const [
              onBoardingpage(
                image: SImageStrings.onBoardingImage1,
                title: STexts.onBoardingTitle_browse,
                subTitle: STexts.onBoardingSubtitle_browse,
              ),
              onBoardingpage(
                image: SImageStrings.onBoardingImage2,
                title: STexts.onBoardingTitle_payment,
                subTitle: STexts.onBoardingSubtitle_payment,
              ),
              onBoardingpage(
                image: SImageStrings.onBoardingImage3,
                title: STexts.onBoardingTitle_shipping,
                subTitle: STexts.onBoardingSubtitle_shipping,
              ),
            ],
          ),

          ///skip
          const onBoardingSkip(),

          ///dot navigation
          onBoardingNavigatioin(controller: pageController), // Pass controller here

          ///circular button
        ],
      ),
    );
  }
}

