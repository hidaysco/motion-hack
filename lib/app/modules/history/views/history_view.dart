import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:motion_hack/app/constant/constants.dart';

import '../controllers/history_controller.dart';

class HistoryView extends GetView<HistoryController> {
  const HistoryView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;
    return Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          backgroundColor: Colors.white,
          leadingWidth: 22,
          leading: IconButton(
              onPressed: () {
                Get.back();
              },
              icon: Padding(
                padding: EdgeInsets.symmetric(
                    horizontal: 30 * (screenSize.width / 390)),
                child: const Icon(
                  Icons.arrow_back_rounded,
                  color: TColors.pressed,
                ),
              )),
          title: Text(
            'Riwayat',
            style: GoogleFonts.poppins(
                color: TColors.pressed,
                fontWeight: FontWeight.w600,
                fontSize: 20),
          ),
          centerTitle: true,
        ),
        body: SafeArea(
            child: SingleChildScrollView(
          child: Padding(
            padding:
                EdgeInsets.symmetric(horizontal: 30 * (screenSize.width / 390)),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  height: 65 * (screenSize.height / 729),
                ),
                Text(
                  'Proyek Selesai',
                  style: GoogleFonts.poppins(
                      color: TColors.primary,
                      fontSize: 20,
                      fontWeight: FontWeight.w500),
                ),
                SizedBox(
                  height: 25 * (screenSize.height / 729),
                ),
                _card(screenSize: screenSize),
                SizedBox(
                  height: 10 * (screenSize.height / 729),
                ),
                _card(screenSize: screenSize),
                SizedBox(
                  height: 10 * (screenSize.height / 729),
                ),
                _card(screenSize: screenSize),
                SizedBox(
                  height: 10 * (screenSize.height / 729),
                ),
              ],
            ),
          ),
        )));
  }
}

class _card extends StatelessWidget {
  const _card({
    super.key,
    required this.screenSize,
  });

  final Size screenSize;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
          borderRadius: BorderRadius.all(Radius.circular(7)),
          color: Colors.white,
          boxShadow: <BoxShadow>[
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
          ]),
      child: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Row(
          children: [
            SizedBox(
              width: screenSize.width / 4.5,
              height: screenSize.width / 4.5,
              child: ClipRRect(
                borderRadius: BorderRadius.circular(7),
                child: Image.network(
                    fit: BoxFit.cover,
                    'https://i.pinimg.com/564x/ee/ea/f3/eeeaf3165c140b1489780343f2728978.jpg'),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(
                  horizontal: TSize.defaultHorizontalSpace),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Proyek Candi',
                    style: GoogleFonts.poppins(
                        color: TColors.pressed,
                        fontWeight: FontWeight.w600,
                        fontSize: 20),
                  ),
                  Text(
                    'Colaboration with user & 4 more',
                    style: GoogleFonts.poppins(
                        color: TColors.primary, fontSize: 10),
                  ),
                  const SizedBox(
                    height: TSize.defaultVertical,
                  ),
                  _collaborator(screenSize: screenSize),
                  const SizedBox(
                    height: TSize.defaultVertical,
                  ),
                  Text.rich(TextSpan(
                      text: 'Telah selesai pada tanggal ',
                      style: GoogleFonts.poppins(
                          color: TColors.pressed, fontSize: 8),
                      children: [
                        TextSpan(
                            text: '25/03/2024',
                            style: GoogleFonts.poppins(
                                fontWeight: FontWeight.w600,
                                color: TColors.primary))
                      ]))
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}

class _collaborator extends StatelessWidget {
  const _collaborator({
    super.key,
    required this.screenSize,
  });

  final Size screenSize;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: screenSize.width / 3,
      child: Stack(
        alignment: Alignment.centerLeft,
        children: [
          _userAvatar(
            screenSize: screenSize,
            image:
                'https://i.pinimg.com/236x/9c/77/67/9c7767b26c9f08b0884129cd6aaf8400.jpg',
          ),
          Positioned(
              left: 15,
              child: _userAvatar(
                  screenSize: screenSize,
                  image:
                      'https://i.pinimg.com/236x/cf/1d/6d/cf1d6d41dd74bf5b53bc2a3978df7749.jpg')),
          Positioned(
              left: 30,
              child: _userAvatar(
                  screenSize: screenSize,
                  image:
                      'https://i.pinimg.com/236x/8b/10/36/8b10365cbca375ab81a24e304f710d59.jpg')),
          Positioned(
              left: 45,
              child: CircleAvatar(
                backgroundColor: Colors.white,
                radius: 15,
                child: CircleAvatar(
                  radius: 13,
                  child: Container(
                    decoration: BoxDecoration(
                      color: Colors.grey,
                      borderRadius: BorderRadius.circular(45),
                    ),
                    child: Center(
                        child: Text(
                      '2+',
                      style: GoogleFonts.poppins(
                          fontSize: 11,
                          color: TColors.primary,
                          fontWeight: FontWeight.w600),
                    )),
                  ),
                ),
              ))
        ],
      ),
    );
  }
}

class _userAvatar extends StatelessWidget {
  const _userAvatar({
    super.key,
    required this.screenSize,
    required this.image,
  });

  final Size screenSize;
  final String image;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
        width: screenSize.width / 15,
        height: screenSize.width / 15,
        child: CircleAvatar(
          radius: 15,
          backgroundColor: Colors.white,
          child: CircleAvatar(
            radius: 11,
            backgroundImage: NetworkImage(image),
          ),
        ));
  }
}
