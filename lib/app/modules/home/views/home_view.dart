import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:motion_hack/app/constant/constants.dart';

import '../controllers/home_controller.dart';

class HomeView extends GetView<HomeController> {
  const HomeView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: HomeController.pages.elementAt(0),
      bottomNavigationBar: BottomNavigationBar(
          currentIndex: 0,
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
    );
  }
}
