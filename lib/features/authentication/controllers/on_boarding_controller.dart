import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:shoe_buy/features/authentication/screens/logIn/logIn.dart';

class onBoaardingController extends GetxController {

  static onBoaardingController get instance => Get.find();

  //variables to be use
  final pageController = PageController();
  Rx<int> currentPage = 0.obs;


  void updatePageIndicator (index) => currentPage.value = index;

  void dotNavigationClick (index)  {

    currentPage.value = index;
    pageController.jumpTo(index);

  }

  void nextPage() {

    if(currentPage.value == 2){
      Get.to(() => LoginScreen());
    } else{
      int page = currentPage.value + 1;
      pageController.jumpToPage(page);
    }

  }

  void skipPage() {

    // currentPage.value = 2;
    // pageController.jumpTo(2);

    Get.to(() => LoginScreen());
  


  }

}