import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:motion_hack/app/constant/constants.dart';
import 'package:motion_hack/app/modules/home/controllers/home_controller.dart';
import 'package:motion_hack/app/modules/payment/views/payment_view.dart';

class HomeDiscoveryView extends GetView {
  const HomeDiscoveryView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    final controller = Get.put(HomeController());
    final screenSize = MediaQuery.of(context).size;
    return Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          backgroundColor: Colors.white,
          title: Text(
            'Eksplorasi Proyek',
            style: GoogleFonts.poppins(
                color: TColors.pressed,
                fontSize: 20,
                fontWeight: FontWeight.w600),
          ),
          centerTitle: true,
        ),
        body: Padding(
          padding: const EdgeInsets.symmetric(
              horizontal: TSize.defaultHorizontalSpace),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: 25 * (screenSize.height / TSize.defaultHeight),
              ),
              Text(
                'Proyek Tersedia',
                style: GoogleFonts.poppins(
                    color: TColors.primary,
                    fontSize: TSize.heading6,
                    fontWeight: FontWeight.w500),
              ),
              SizedBox(
                height: 25 * (screenSize.height / TSize.defaultHeight),
              ),
              DefaultTabController(
                  length: 3,
                  child: TabBar(
                      controller: controller.tabController,
                      dividerColor: TColors.placeholder,
                      indicatorSize: TabBarIndicatorSize.tab,
                      splashFactory: NoSplash.splashFactory,
                      labelStyle: GoogleFonts.poppins(
                          color: TColors.pressed,
                          fontSize: 12,
                          fontWeight: FontWeight.w600),
                      tabs: const [
                        Tab(
                          text: 'Pemula',
                        ),
                        Tab(
                          text: 'Menengah',
                        ),
                        Tab(
                          text: 'Mahir',
                        ),
                      ])),
              Expanded(
                child:
                    TabBarView(controller: controller.tabController, children: [
                  _Content(title: controller.pemula),
                  _Content(title: controller.menengah),
                  _Content(title: controller.mahir),
                ]),
              )
            ],
          ),
        ));
  }
}

class _Content extends StatelessWidget {
  const _Content({
    super.key,
    required this.title,
  });

  final List<String> title;
  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;
    return GridView.builder(
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          crossAxisSpacing: 8,
          mainAxisSpacing: 8,
          mainAxisExtent: 175),
      itemCount: title.length,
      itemBuilder: (_, int index) {
        return _CardProject(
          screenSize: screenSize,
          title: title[index],
        );
      },
    );
  }
}

class _CardProject extends StatelessWidget {
  const _CardProject({
    super.key,
    required this.screenSize,
    required this.title,
  });

  final Size screenSize;
  final String title;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(right: 5),
      width: 153 * (screenSize.width / TSize.defaultWidth),
      decoration: const BoxDecoration(
        boxShadow: [
          BoxShadow(
            color: Color.fromRGBO(0, 0, 0, 0.025),
            offset: Offset(-7, 7),
            blurRadius: 9,
          ),
          BoxShadow(
            color: Color.fromRGBO(0, 0, 0, 0.025),
            offset: Offset(7, -7),
            blurRadius: 9,
          )
        ],
        borderRadius: BorderRadius.all(Radius.circular(8)),
        color: Colors.white,
      ),
      padding: const EdgeInsets.all(8),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          _imageCard(
            title: title,
          ),
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
                                onTap: () => Get.to(() => const PaymentView()),
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
    required this.title,
  });
  final String title;

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
              title,
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
