import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:motion_hack/app/constant/constants.dart';
import 'package:motion_hack/app/modules/home/bindings/home_binding.dart';
import 'package:motion_hack/app/modules/home/views/home_view.dart';

class SuccessView extends GetView {
  const SuccessView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;
    return Container(
      width: screenSize.width,
      height: screenSize.height,
      color: Colors.white,
      child: Padding(
        padding: const EdgeInsets.symmetric(
            horizontal: TSize.defaultHorizontalSpace),
        child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
          SizedBox(
              width: screenSize.height / 3,
              child:
                  Image.asset('assets/images/Boasting--Streamline-Manila.png')),
          const SizedBox(
            height: 40,
          ),
          Text(
            'Selamat !',
            style: GoogleFonts.poppins(
                color: TColors.primary,
                fontSize: TSize.heading5,
                fontWeight: FontWeight.w600),
          ),
          Text(
            'Anda Berhasil',
            style: GoogleFonts.poppins(
                color: TColors.primary,
                fontSize: TSize.heading4,
                fontWeight: FontWeight.w600),
          ),
          Text(
            'bergabung broyek',
            style: GoogleFonts.poppins(
                color: TColors.primary,
                fontSize: 20,
                fontWeight: FontWeight.w400),
          ),
          const SizedBox(
            height: 25,
          ),
          Text(
            'Anda bisa memulai',
            style: GoogleFonts.poppins(
                color: TColors.primary,
                fontSize: 20,
                fontWeight: FontWeight.w500),
          ),
          Center(
            child: Text(
              'berdiskusi dengan anggota lainnya',
              style: GoogleFonts.poppins(
                  color: TColors.primary,
                  fontSize: 20,
                  fontWeight: FontWeight.w500),
            ),
          ),
          SizedBox(
            width: screenSize.width,
            child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(30)),
                    onPrimary: const Color(0xFFE8E8E8),
                    primary: Colors.purple),
                onPressed: () =>
                    Get.offAll(() => const HomeView(), binding: HomeBinding()),
                child: const Text(
                  "Oke",
                  style: TextStyle(color: Colors.white),
                )),
          ),
        ]),
      ),
    );
  }
}
