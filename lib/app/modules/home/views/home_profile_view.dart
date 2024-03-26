import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:motion_hack/app/constant/constants.dart';
import 'package:motion_hack/app/modules/history/bindings/history_binding.dart';
import 'package:motion_hack/app/modules/history/views/history_view.dart';
import 'package:motion_hack/app/modules/login/bindings/login_binding.dart';
import 'package:motion_hack/app/modules/login/views/login_view.dart';

class HomeProfileView extends GetView {
  const HomeProfileView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Text(
          'Profil',
          style: GoogleFonts.poppins(
              fontWeight: FontWeight.w600,
              fontSize: 20,
              color: TColors.pressed),
        ),
        centerTitle: true,
      ),
      body: SafeArea(
        child: CustomScrollView(
          slivers: [
            SliverToBoxAdapter(
              child: SizedBox(
                height: screenSize.height / 3.5,
                child: _head(screenSize: screenSize),
              ),
            ),
            SliverToBoxAdapter(
              child: _body(screenSize: screenSize),
            )
          ],
        ),
      ),
    );
  }
}

class _body extends StatelessWidget {
  const _body({
    super.key,
    required this.screenSize,
  });

  final Size screenSize;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(
          horizontal: (screenSize.width / 7),
          vertical: 48 * (screenSize.height / 899)),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Pengaturan Akun',
            style: GoogleFonts.poppins(color: TColors.primary),
          ),
          SizedBox(
            height: 21 * (screenSize.height / 899),
          ),
          GestureDetector(
              onTap: () {},
              child: Container(
                decoration: const BoxDecoration(
                    border: Border.symmetric(
                        horizontal:
                            BorderSide(color: TColors.border, width: 1))),
                child: _feature(
                  screenSize: screenSize,
                  title: 'Ubah Profil',
                  image: 'iconamoon_profile-circle-fill.png',
                ),
              )),
          GestureDetector(
              onTap: () => Get.to(() => const HistoryView()),
              child: _feature(
                screenSize: screenSize,
                title: 'Riwayat',
                image: 'ic_round-history.png',
              )),
          GestureDetector(
              onTap: () => Get.to(const LoginView(), binding: LoginBinding()),
              child: Container(
                decoration: const BoxDecoration(
                    border: Border.symmetric(
                        horizontal:
                            BorderSide(color: TColors.border, width: 1))),
                child: _feature(
                  screenSize: screenSize,
                  title: 'Keluar',
                  image: 'majesticons_logout-line.png',
                ),
              )),
        ],
      ),
    );
  }
}

class _feature extends StatelessWidget {
  const _feature({
    super.key,
    required this.screenSize,
    required this.title,
    required this.image,
  });

  final Size screenSize;
  final String title, image;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 20 * (screenSize.height / 899)),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              ImageIcon(
                AssetImage('assets/icons/$image'),
                color: TColors.unselect,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 10.0),
                child: Text(
                  title,
                ),
              ),
            ],
          ),
          const Icon(
            Icons.chevron_right,
            color: TColors.pressed,
          )
        ],
      ),
    );
  }
}

class _head extends StatelessWidget {
  const _head({
    super.key,
    required this.screenSize,
  });

  final Size screenSize;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          decoration: const BoxDecoration(
              borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(40),
                  bottomRight: Radius.circular(40)),
              gradient: LinearGradient(
                  colors: [TColors.hover, TColors.main],
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter)),
          height: 162 * (844 / screenSize.height),
        ),
        Positioned(
          top: screenSize.height / 7,
          left: screenSize.width / 7,
          child: Container(
            decoration: const BoxDecoration(
              borderRadius: BorderRadius.all(Radius.circular(6)),
              color: Colors.white,
              boxShadow: <BoxShadow>[
                BoxShadow(
                  color: Color.fromRGBO(0, 0, 0, 0.025),
                  offset: Offset(0, -7),
                  blurRadius: 9,
                ),
                BoxShadow(
                  color: Color.fromRGBO(0, 0, 0, 0.025),
                  offset: Offset(7, 0),
                  blurRadius: 9,
                ),
                BoxShadow(
                  color: Color.fromRGBO(0, 0, 0, 0.025),
                  offset: Offset(-7, 0),
                  blurRadius: 9,
                ),
                BoxShadow(
                  color: Color.fromRGBO(0, 0, 0, 0.025),
                  offset: Offset(0, 7),
                  blurRadius: 9,
                ),
              ],
            ),
            width: 288 * (390 / screenSize.width),
            child: Padding(
              padding: EdgeInsets.symmetric(
                  vertical: 20 * (screenSize.height / 899)),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  SizedBox(
                    height: 170 * (844 / screenSize.height) / 2.5,
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(100),
                      child: const Image(
                          fit: BoxFit.cover,
                          image:
                              AssetImage('assets/images/profile-picture.jpg')),
                    ),
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'Laasyavi Madira',
                        style: GoogleFonts.poppins(
                            color: TColors.pressed,
                            fontSize: 14,
                            fontWeight: FontWeight.w600),
                      ),
                      Text(
                        'Pelajar Pemula',
                        style: GoogleFonts.poppins(
                            color: TColors.primary, fontSize: 14),
                      ),
                    ],
                  )
                  // Image(image: AssetImage('assets/images/profile-picture.jpg'))
                ],
              ),
            ),
          ),
        )
      ],
    );
  }
}
