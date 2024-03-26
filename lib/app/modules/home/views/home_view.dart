import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:motion_hack/app/constant/constants.dart';

import '../controllers/home_controller.dart';

class HomeView extends GetView<HomeController> {
  const HomeView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Obx(() => Scaffold(
          backgroundColor: Colors.white,
          body: HomeController.pages.elementAt(controller.currentNav.value),
          bottomNavigationBar: BottomNavigationBar(
              backgroundColor: Colors.white,
              onTap: controller.toggleNav,
              currentIndex: controller.currentNav.value,
              type: BottomNavigationBarType.fixed,
              showSelectedLabels: false,
              showUnselectedLabels: false,
              unselectedItemColor: TColors.iconPreset,
              items: const [
                BottomNavigationBarItem(
                    label: 'Beranda',
                    icon: ImageIcon(
                      AssetImage('assets/icons/ic_round-home.png'),
                      size: 36,
                    )),
                BottomNavigationBarItem(
                    label: 'Eksprolasi',
                    icon: ImageIcon(
                      AssetImage('assets/icons/mingcute_search-3-fill.png'),
                      size: 22,
                    )),
                BottomNavigationBarItem(
                    label: 'Proyek',
                    icon: ImageIcon(
                      AssetImage(
                          'assets/icons/streamline_projector-board-solid.png'),
                      size: 22,
                    )),
                BottomNavigationBarItem(
                    label: 'Profil',
                    icon: ImageIcon(
                      AssetImage('assets/icons/profile.png'),
                      size: 28,
                    )),
              ]),
        ));
  }
}
