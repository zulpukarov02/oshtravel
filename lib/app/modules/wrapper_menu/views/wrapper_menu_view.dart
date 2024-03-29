import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../theme/app_theme.dart';
import '../../bookmark/views/bookmark_view.dart';
import '../../diskon/views/diskon_view.dart';
import '../../home/views/home_view.dart';
import '../../pesanan/views/pesanan_view.dart';
import '../../profile/views/profile_view.dart';
import '../controllers/wrapper_menu_controller.dart';

class WrapperMenuView extends StatefulWidget {
  const WrapperMenuView({super.key});

  @override
  State<WrapperMenuView> createState() => _WrapperMenuViewState();
}

class _WrapperMenuViewState extends State<WrapperMenuView> {
  WrapperMenuController controller = Get.put(WrapperMenuController());

  @override
  Widget build(BuildContext context) {
    log("RENDER");

    return Obx(() {
      return Scaffold(
        resizeToAvoidBottomInset: false,
        body: PageView(
          controller: controller.pageController.value,
          onPageChanged: (v) {
            controller.indexPage.value = v;
          },
          physics: const NeverScrollableScrollPhysics(),
          children: const [
            HomeView(),
            PesananView(),
            DiskonView(),
            BookmarkView(),
            ProfileScreen(),
            ProfileView(),
          ],
        ),
        bottomNavigationBar: Theme(
          data: appTheme(
            context,
            useDark: controller.isDark.value,
          ),
          child: ClipRRect(
            borderRadius: const BorderRadius.only(
              topLeft: Radius.circular(10),
              topRight: Radius.circular(10),
            ),
            child: NavigationBar(
              height: 70,
              selectedIndex: controller.indexPage.value,
              onDestinationSelected: (v) {
                controller.indexPage.value = v;
                controller.pageController.value.jumpToPage(v);
              },
              destinations: [
                NavigationDestination(
                  selectedIcon: Icon(
                    Icons.home_filled,
                    color: appColor(context).useScheme.primary,
                  ),
                  icon: const Icon(
                    Icons.home_filled,
                  ),
                  label: 'Баш баракча',
                ),
                NavigationDestination(
                  selectedIcon: Badge(
                    label: const Text("1"),
                    child: Icon(
                      Icons.luggage_rounded,
                      color: appColor(context).useScheme.primary,
                    ),
                  ),
                  icon: const Badge(
                    label: Text("1"),
                    child: Icon(
                      Icons.luggage_rounded,
                    ),
                  ),
                  label: 'Буйрутма',
                ),
                NavigationDestination(
                  selectedIcon: Badge(
                    label: const Text("10"),
                    child: Icon(
                      Icons.monetization_on_rounded,
                      color: appColor(context).useScheme.primary,
                    ),
                  ),
                  icon: const Badge(
                    label: Text("10"),
                    child: Icon(
                      Icons.monetization_on_rounded,
                    ),
                  ),
                  label: 'Кооздуктар',
                ),
                NavigationDestination(
                  selectedIcon: Badge(
                    label: const Text("10"),
                    child: Icon(
                      Icons.bookmark,
                      color: appColor(context).useScheme.primary,
                    ),
                  ),
                  icon: const Badge(
                    label: Text("10"),
                    child: Icon(
                      Icons.bookmark,
                    ),
                  ),
                  label: 'Кыстарма',
                ),
                NavigationDestination(
                  selectedIcon: Icon(
                    Icons.account_circle,
                    color: appColor(context).useScheme.primary,
                  ),
                  icon: const Icon(Icons.account_circle),
                  label: 'Profile',
                ),
                // NavigationDestination(
                //   selectedIcon: Icon(
                //     Icons.drag_indicator_outlined,
                //     color: appColor(context).useScheme.primary,
                //   ),
                //   icon: const Icon(Icons.drag_indicator_outlined),
                //   label: 'Тема',
                // ),
              ],
            ),
          ),
        ),
      );
    });
  }
}
