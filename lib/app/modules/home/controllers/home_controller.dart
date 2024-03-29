import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:motion_hack/app/modules/detailProject/views/detail_project_view.dart';
import 'package:motion_hack/app/modules/home/views/existing_project_view.dart';
import 'package:motion_hack/app/modules/home/views/home_beranda_view.dart';
import 'package:motion_hack/app/modules/home/views/home_profile_view.dart';
import 'package:motion_hack/app/modules/home/views/home_project_view.dart';
import 'package:motion_hack/app/modules/home/views/home_discovery_view.dart';

class HomeController extends GetxController
    with GetSingleTickerProviderStateMixin {
  //TODO: Implement HomeController
  final currentBannerIdx = 1.obs;
  final currentNav = 0.obs;

  late TabController tabController = TabController(length: 3, vsync: this);
  final List<String> pemula = [
    'Pembaca Dongeng',
    'Kuli Proyek',
    'Penjual Bakso',
    'Pembuatan Aplikasi',
  ];
  final List<String> menengah = [
    'Pembaca Dongeng II',
    'Kuli Proyek II',
    'Penjual Bakso II',
    'Pembuatan Aplikasi',
  ];

  final List<String> mahir = [
    'Pembaca Dongeng III',
    'Kuli Proyek III',
    'Penjual Bakso III',
    'Pembuatan Aplikasi',
  ];
  @override
  @override
  void onInit() {
    super.onInit();
  }

  static const List<Widget> pages = <Widget>[
    HomeBerandaView(),
    HomeDiscoveryView(),
    // HomeProjectView(),
    ExistingProjectView(),
    HomeProfileView()
  ];
  void updateBannerIdx(int idx) {
    currentBannerIdx.value = idx;
  }

  void toggleNav(int val) {
    currentNav.value = val;
  }
}
