import 'package:flutter/material.dart';
import 'package:get/state_manager.dart';
import 'package:iconsax/iconsax.dart';

class NavMenu extends StatelessWidget {
  const NavMenu({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: NavigationBar(
        height: 80,
        elevation: 0,
        selectedIndex: 0,
        //TODO
        onDestinationSelected: (index),

        destinations: [
          const NavigationDestination(icon: Icon(Iconsax.home), label: 'Home'),
          const NavigationDestination(icon: Icon(Iconsax.shop), label: 'Store'),
          const NavigationDestination(
            icon: Icon(Iconsax.heart1),
            label: 'Wishlists',
          ),
          const NavigationDestination(
            icon: Icon(Iconsax.user),
            label: 'Profile',
          ),
        ],
      ),
      body: Container(),
    );
  }
}

class NavigationController extends GetxController {
  final Rx<int> selectedIndex = 0.obs;
}
