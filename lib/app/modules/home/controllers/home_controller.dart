import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:motion_hack/app/modules/home/views/home_beranda_view.dart';
import 'package:motion_hack/app/modules/home/views/home_profile_view.dart';

class HomeController extends GetxController {
  //TODO: Implement HomeController
  final currentBannerIdx = 1.obs;
  static const List<Widget> pages = <Widget>[
    HomeBerandaView(),
    HomeProfileView()
  ];
  void updateBannerIdx(int idx) {
    currentBannerIdx.value = idx;
    print(currentBannerIdx.value);
  }
}
