import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/state_manager.dart';
import 'package:iconsax/iconsax.dart';

class NavMenu extends StatelessWidget {
  const NavMenu({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(NavigationController());

    //obs: Used to create an observable variable that can be monitored for changes.
    //Obx: A widget that listens to observable variables and rebuilds its child whenever the observed variable changes.

    return Scaffold(
      bottomNavigationBar: Obx(
        () => NavigationBar(
          height: 80,
          elevation: 0,
          selectedIndex: controller.selectedIndex.value,
          onDestinationSelected:
              (index) => controller.selectedIndex.value = index,

          destinations: [
            const NavigationDestination(
              icon: Icon(Iconsax.home),
              label: 'Home',
            ),
            const NavigationDestination(
              icon: Icon(Iconsax.shop),
              label: 'Store',
            ),
            const NavigationDestination(
              icon: Icon(Iconsax.heart),
              label: 'Wishlists',
            ),
            const NavigationDestination(
              icon: Icon(Iconsax.user),
              label: 'Profile',
            ),
          ],
        ),
      ),
      body: Obx(() => controller.screens[controller.selectedIndex.value]),
    );
  }
}

class NavigationController extends GetxController {
  final Rx<int> selectedIndex = 0.obs;

  //sample screens to view the code's logic
  final screens = [
    Container(color: Colors.green),
    Container(color: Colors.blue),
    Container(color: Colors.purple),
    Container(color: Colors.orange),
  ];
}
