import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:motion_hack/app/constant/constants.dart';
import 'package:motion_hack/app/modules/home/controllers/home_controller.dart';

class HomeBerandaView extends GetView {
  const HomeBerandaView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    final controller = Get.put(HomeController());
    final screenSize = MediaQuery.of(context).size;
    return Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          backgroundColor: Colors.white,
          title: Text(
            'Beranda',
            style: GoogleFonts.poppins(
                color: TColors.pressed,
                fontSize: TSize.heading5,
                fontWeight: FontWeight.w600),
          ),
          centerTitle: true,
          shadowColor: TColors.primary,
          elevation: 2.5,
          bottomOpacity: 0.25,
        ),
        body: SafeArea(
            child: Padding(
          padding: const EdgeInsets.symmetric(
              horizontal: TSize.defaultHorizontalSpace),
          child: Column(
            children: [
              SizedBox(
                height: 40 * (screenSize.height / TSize.defaultHeight),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Hallo, Laasyavi Madira!',
                    style: GoogleFonts.poppins(
                        color: TColors.pressed,
                        fontSize: TSize.heading6,
                        fontWeight: FontWeight.w400),
                  ),
                  Container(
                      height: TSize.heading5,
                      width: 122 * (screenSize.width / TSize.defaultWidth),
                      decoration: const BoxDecoration(
                          borderRadius: BorderRadius.all(Radius.circular(6)),
                          gradient: LinearGradient(
                              colors: [TColors.main, TColors.hover],
                              begin: Alignment.topCenter,
                              end: Alignment.bottomCenter)),
                      child: Center(
                        child: Text(
                          'Project Manager, Pemula',
                          style: GoogleFonts.poppins(
                              color: Colors.white,
                              fontSize: TSize.textBodyS,
                              fontWeight: FontWeight.w500),
                        ),
                      ))
                ],
              ),
              SizedBox(
                height: 40 * (screenSize.height / TSize.defaultHeight),
              ),
              CarouselSlider(
                  items: [
                    _bannerImage(screenSize: screenSize),
                    _bannerImage(screenSize: screenSize),
                    _bannerImage(screenSize: screenSize)
                  ],
                  options: CarouselOptions(
                    viewportFraction: 1,
                    autoPlay: true,
                    autoPlayInterval: 5.seconds,
                    aspectRatio: 21 / 9,
                    onPageChanged: (index, _) =>
                        controller.updateBannerIdx(index),
                  )),
              const SizedBox(
                height: TSize.defaultVertical,
              ),
              Obx(() => Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      for (int i = 0; i < 3; i++)
                        Container(
                            margin: const EdgeInsets.symmetric(horizontal: 5),
                            height: TSize.defaultVertical / 2,
                            width: TSize.defaultVertical / 2,
                            color: controller.currentBannerIdx.value != i
                                ? TColors.placeholder
                                : TColors.hover)
                    ],
                  ))
            ],
          ),
        )));
  }
}

class _bannerImage extends StatelessWidget {
  const _bannerImage({
    super.key,
    required this.screenSize,
  });

  final Size screenSize;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {},
      child: Container(
        decoration: BoxDecoration(borderRadius: BorderRadius.circular(7)),
        width: double.infinity,
        child: ClipRRect(
          borderRadius: BorderRadius.circular(7),
          child: const Image(
              image: AssetImage('assets/images/banner.jpg'), fit: BoxFit.cover),
        ),
      ),
    );
  }
}
