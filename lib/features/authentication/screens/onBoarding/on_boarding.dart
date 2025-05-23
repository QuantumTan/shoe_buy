import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:shoe_buy/features/authentication/screens/onBoarding/widgets/on_boarding_button.dart';
import 'package:shoe_buy/features/authentication/screens/onBoarding/widgets/on_boarding_nav.dart';
import 'package:shoe_buy/features/authentication/screens/onBoarding/widgets/on_boarding_page.dart';
import 'package:shoe_buy/features/authentication/screens/onBoarding/widgets/on_boarding_skip.dart';
import 'package:shoe_buy/utils/constants/image_strings.dart';
import 'package:shoe_buy/utils/constants/text_strings.dart';

import '../../controllers/on_boarding_controller.dart';


class onBoardingScreen extends StatelessWidget {
  const onBoardingScreen({super.key});

  @override
  Widget build(BuildContext context) {

    final controller = Get.put(onBoaardingController());
    
    return Scaffold(
      body: Stack(
        children: [
          ///horizontal scrollable pages
          PageView(
            controller: controller.pageController,
            onPageChanged: controller.updatePageIndicator,
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
          const OnBoardingNavigation(),

          ///circular button
         const onBoardingButton(),
        ],
      ),
    );
  }
}