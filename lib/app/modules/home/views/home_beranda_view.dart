import 'dart:async';

import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:motion_hack/app/constant/constants.dart';
import 'package:motion_hack/app/modules/home/controllers/home_controller.dart';
import 'package:motion_hack/app/modules/payment/bindings/payment_binding.dart';
import 'package:motion_hack/app/modules/payment/views/payment_view.dart';

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
        ),
        body: SafeArea(
            child: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(
                    horizontal: TSize.defaultHorizontalSpace),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
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
                        InkWell(
                          onTap: () {},
                          splashColor: TColors.pressed,
                          borderRadius: BorderRadius.circular(7),
                          child: Ink(
                              width:
                                  122 * (screenSize.width / TSize.defaultWidth),
                              height: TSize.heading5,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(7),
                                  gradient: const LinearGradient(
                                      colors: [
                                        TColors.main,
                                        TColors.hover,
                                      ],
                                      begin: Alignment.topCenter,
                                      end: Alignment.bottomCenter)),
                              child: Center(
                                child: Text(
                                  "Project Manager, Pemula",
                                  style: GoogleFonts.poppins(
                                      fontSize: TSize.textBodyS,
                                      color: Colors.white,
                                      fontWeight: FontWeight.w600),
                                ),
                              )),
                        ),
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
                                  margin:
                                      const EdgeInsets.symmetric(horizontal: 5),
                                  height: TSize.defaultVertical / 2,
                                  width: TSize.defaultVertical / 2,
                                  color: controller.currentBannerIdx.value != i
                                      ? TColors.placeholder
                                      : TColors.hover)
                          ],
                        )),
                    const SizedBox(
                      height: TSize.defaultVertical,
                    ),
                    Text.rich(TextSpan(
                        text: 'Anda ingin belajar apa\n',
                        style: GoogleFonts.poppins(
                            fontSize: TSize.heading5,
                            fontWeight: FontWeight.w300),
                        children: [
                          TextSpan(
                              text: 'hari ini ?',
                              style: GoogleFonts.poppins(
                                  color: TColors.pressed,
                                  fontWeight: FontWeight.w500))
                        ])),
                    Container()
                  ],
                ),
              ),
              const SizedBox(
                height: TSize.defaultHorizontalSpace / 2,
              ),
              _recomendationProject(
                screenSize: screenSize,
                controller: controller,
              ),
              const SizedBox(
                height: TSize.defaultHorizontalSpace,
              ),
              const Text('Lanjutkan Proyek')
            ],
          ),
        )));
  }
}

class _recomendationProject extends StatelessWidget {
  const _recomendationProject({
    super.key,
    required this.screenSize,
    required this.controller,
  });

  final Size screenSize;
  final HomeController controller;
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
          gradient: LinearGradient(
              colors: [TColors.main, TColors.hover],
              begin: Alignment.centerLeft,
              end: Alignment.centerRight)),
      width: double.infinity,
      // height: 261 * (screenSize.height / TSize.defaultHeight),
      child: Padding(
        padding: const EdgeInsets.only(
            left: TSize.defaultHorizontalSpace, top: 20, bottom: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Rekomendasi Proyek',
                  style: GoogleFonts.poppins(
                      color: Colors.white,
                      fontSize: TSize.heading6,
                      fontWeight: FontWeight.w600),
                ),
                Padding(
                  padding: const EdgeInsets.only(
                      right: TSize.defaultHorizontalSpace),
                  child: GestureDetector(
                    onTap: () {
                      controller.toggleNav(1);
                    },
                    child: Text('Lihat Selengkapnya',
                        style: GoogleFonts.poppins(
                            fontSize: TSize.defaultTextBody,
                            color: Colors.white,
                            decoration: TextDecoration.underline,
                            decorationColor: Colors.white)),
                  ),
                )
              ],
            ),
            const SizedBox(
              height: 13,
            ),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  _CardProject(screenSize: screenSize),
                  _CardProject(screenSize: screenSize),
                  _CardProject(screenSize: screenSize),
                  _CardProject(screenSize: screenSize)
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}

class _CardProject extends StatelessWidget {
  const _CardProject({
    super.key,
    required this.screenSize,
  });

  final Size screenSize;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(right: 5),
      width: 153 * (screenSize.width / TSize.defaultWidth),
      decoration: const BoxDecoration(
        borderRadius: BorderRadius.all(Radius.circular(8)),
        color: Colors.white,
      ),
      padding: const EdgeInsets.all(8),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const _imageCard(),
          const SizedBox(
            height: 5,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Expanded(
                child: Text(
                  overflow: TextOverflow.ellipsis,
                  'Membaca menggunakan hati',
                  style: GoogleFonts.poppins(
                      color: TColors.pressed, fontSize: TSize.textBodyS),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 15.0),
                child: Text(
                  '2/6',
                  style: GoogleFonts.poppins(color: TColors.placeholder),
                ),
              )
            ],
          ),
          Text(
            'Pemula',
            style: GoogleFonts.poppins(
                fontSize: TSize.textBodyS,
                fontWeight: FontWeight.w500,
                color: TColors.error),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'Rp 200.000,00',
                style: GoogleFonts.poppins(
                    fontSize: TSize.textBodyS,
                    fontWeight: FontWeight.w500,
                    color: TColors.pressed),
              ),
              GestureDetector(
                onTap: () {
                  Get.bottomSheet(Container(
                    height: screenSize.height / 2.25,
                    width: double.infinity,
                    decoration: const BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(20),
                          topRight: Radius.circular(20)),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(32.0),
                      child: Column(
                        children: [
                          SizedBox(
                              width: 80,
                              height: 80,
                              child: Image.asset('assets/images/Document.jpg')),
                          const SizedBox(
                            height: 25,
                          ),
                          Text('Apakah anda yakin',
                              style: GoogleFonts.poppins(
                                fontSize: TSize.heading6,
                                fontWeight: FontWeight.w600,
                                color: TColors.pressed,
                              )),
                          Text('ingin bergabung dengan proyek',
                              style: GoogleFonts.poppins(
                                fontSize: TSize.defaultTextBody,
                                color: TColors.primary,
                              )),
                          Text('Proyek Membaca?',
                              style: GoogleFonts.poppins(
                                fontSize: TSize.heading6,
                                fontWeight: FontWeight.w600,
                                color: TColors.primary,
                              )),
                          Text(
                              textAlign: TextAlign.center,
                              'Perlu diingat bahwa Anda hanya bisa mengikuti 1 proyek dalam kurun waktu 6 minggu',
                              style: GoogleFonts.poppins(
                                fontSize: TSize.defaultTextBody,
                                color: TColors.error,
                              )),
                          const SizedBox(
                            height: 23,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              GestureDetector(
                                onTap: () => Get.back(),
                                child: Container(
                                  width: 150 *
                                      (screenSize.width / TSize.defaultWidth),
                                  height: 40 *
                                      (screenSize.height / TSize.defaultHeight),
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(50),
                                      border:
                                          Border.all(color: TColors.pressed)),
                                  child: Center(
                                      child: Text('Tidak',
                                          style: GoogleFonts.poppins(
                                              color: TColors.pressed,
                                              fontSize: TSize.heading6,
                                              fontWeight: FontWeight.w600))),
                                ),
                              ),
                              GestureDetector(
                                onTap: () => Get.to(() => const PaymentView(),
                                    binding: PaymentBinding()),
                                child: Container(
                                  width: 150 *
                                      (screenSize.width / TSize.defaultWidth),
                                  height: 40 *
                                      (screenSize.height / TSize.defaultHeight),
                                  decoration: BoxDecoration(
                                      color: TColors.pressed,
                                      borderRadius: BorderRadius.circular(50),
                                      border:
                                          Border.all(color: TColors.pressed)),
                                  child: Center(
                                      child: Text(
                                    'Ya',
                                    style: GoogleFonts.poppins(
                                        fontSize: TSize.heading6,
                                        color: Colors.white,
                                        fontWeight: FontWeight.w600),
                                  )),
                                ),
                              )
                            ],
                          )
                        ],
                      ),
                    ),
                  ));
                },
                child: Container(
                  height: 20,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(50),
                    border: Border.all(color: TColors.success),
                  ),
                  child: Padding(
                    padding:
                        const EdgeInsets.symmetric(horizontal: 4, vertical: 2),
                    child: Center(
                      child: Text(
                        'Bergabung',
                        style: GoogleFonts.poppins(
                            color: TColors.success, fontSize: TSize.textBodyS),
                      ),
                    ),
                  ),
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}

class _imageCard extends StatelessWidget {
  const _imageCard({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.bottomCenter,
      children: [
        ClipRRect(
            borderRadius: BorderRadius.circular(8),
            child: Image.asset('assets/images/project-1.jpg')),
        Container(
          width: double.infinity,
          color: const Color.fromRGBO(255, 255, 255, 0.5),
          child: Padding(
            padding: const EdgeInsets.all(5.0),
            child: Text(
              'Proyek Membaca',
              style: GoogleFonts.poppins(
                  fontSize: TSize.defaultTextBody,
                  fontWeight: FontWeight.w600,
                  color: TColors.pressed),
            ),
          ),
        )
      ],
    );
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
