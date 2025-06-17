import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';

import '../../controllers/bottonnavbar_controller.dart';
import 'BottomNavBar Screen/home_screen.dart';
import 'bottomNavbar screen/profile/profile_screen.dart';
import 'bottomNavbar screen/store_screen.dart';
import 'bottomNavbar screen/wishlist_screen.dart';

class BottomNavBar extends StatefulWidget {
  const BottomNavBar({super.key});

  @override
  State<BottomNavBar> createState() => _BottomNavBarState();
}

class _BottomNavBarState extends State<BottomNavBar> {
  List<Widget> screens = [
    HomeScreen(),
    StoreScreen(),
    WishlistScreen(),
    ProfileScreen()
  ];

  final BottomNavBarController _controller = Get.put(BottomNavBarController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //........................... Body ............................//
      body: Obx(() => IndexedStack(
            index: _controller.currentIndex.value,
            children: screens,
          )),

      //........................... BottomNsvBar ............................//
      bottomNavigationBar: Obx(
        () => NavigationBar(
            backgroundColor: Theme.of(context).colorScheme.secondary,
            onDestinationSelected: _controller.tapped,
            indicatorColor: Theme.of(context).colorScheme.onPrimary,
            selectedIndex: _controller.currentIndex.value,
            indicatorShape: StadiumBorder(),
            height: 60,
            elevation: 0,
            destinations: [
              NavigationDestination(icon: Icon(Iconsax.home), label: "Home"),
              NavigationDestination(icon: Icon(Iconsax.shop), label: "Store"),
              NavigationDestination(
                  icon: Icon(Iconsax.heart), label: "Wishlist"),
              NavigationDestination(icon: Icon(Iconsax.user), label: "Profile"),
            ]),
      ),
    );
  }
}
