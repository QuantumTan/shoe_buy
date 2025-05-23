import 'package:flutter/material.dart';
import 'package:get/get.dart';

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

    if(currentPage == 2){
     // Get.to(LogInScreen());
    } else{
      int page = currentPage.value + 1;
      pageController.jumpToPage(page);
    }

  }

  void skipPage() {

    currentPage.value = 2;
    pageController.jumpTo(2);


  }

}