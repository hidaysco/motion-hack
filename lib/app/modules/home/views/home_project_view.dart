import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:motion_hack/app/constant/constants.dart';

class HomeProjectView extends GetView {
  const HomeProjectView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Text(
          'Proyek Anda',
          style: GoogleFonts.poppins(
              color: TColors.pressed,
              fontSize: 20,
              fontWeight: FontWeight.w600),
        ),
        centerTitle: true,
      ),
      body: _projectNotFound(screenSize: screenSize),
    );
  }
}

class _projectNotFound extends StatelessWidget {
  const _projectNotFound({
    super.key,
    required this.screenSize,
  });

  final Size screenSize;

  @override
  Widget build(BuildContext context) {
    return Center(
        child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
      SizedBox(
          width: screenSize.height / 3,
          child: Image.asset('assets/images/Loading--Streamline-Manila.png')),
      const SizedBox(
        height: 40,
      ),
      Text(
        'Belum ada proyek',
        style: GoogleFonts.poppins(
            color: TColors.primary,
            fontSize: TSize.heading5,
            fontWeight: FontWeight.w600),
      ),
      Text(
        'Carilah proyek dan ikuti\nbersama pengguna lain!',
        style: GoogleFonts.poppins(color: TColors.pressed, fontSize: 13),
      )
    ]));
  }
}
