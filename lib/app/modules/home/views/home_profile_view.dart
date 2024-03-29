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
    return Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          backgroundColor: Colors.white,
          title: Text(
            'Profil',
            style: GoogleFonts.poppins(
                fontWeight: FontWeight.w600,
                fontSize: TSize.heading5,
                color: TColors.pressed),
          ),
          centerTitle: true,
        ),
        body: SafeArea(
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Stack(
                  children: [
                    Container(
                      height: 212,
                      decoration: const BoxDecoration(
                        color: Color(0xFFA345F0),
                        borderRadius: BorderRadius.only(
                          bottomLeft: Radius.circular(40),
                          bottomRight: Radius.circular(40),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 50),
                      child: Container(
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(6),
                            color: Colors.white,
                            boxShadow: [
                              BoxShadow(
                                  blurRadius: 10,
                                  color: Colors.grey.withOpacity(0.5))
                            ]),
                        margin: EdgeInsets.only(top: 100),
                        height: 172,
                        child: Column(
                          children: [
                            Padding(
                              padding: const EdgeInsets.symmetric(
                                  horizontal: 10, vertical: 30),
                              child: Column(
                                children: [
                                  Container(
                                    decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(25),
                                        color: Colors.white,
                                        boxShadow: [
                                          BoxShadow(
                                              blurRadius: 10,
                                              color:
                                                  Colors.grey.withOpacity(0.5))
                                        ]),
                                    height: 87,
                                    child: const Padding(
                                      padding: EdgeInsets.symmetric(
                                          horizontal: 10, vertical: 12),
                                      child: Row(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          CircleAvatar(
                                            backgroundImage: AssetImage(
                                                'assets/images/profile-picture.jpg'),
                                            radius: 30,
                                          ),
                                          Column(
                                            mainAxisAlignment:
                                                MainAxisAlignment.start,
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              Text(
                                                "Luffy Dono",
                                                style: TextStyle(
                                                    color: Color(0xFF652A95),
                                                    fontWeight: FontWeight.bold,
                                                    fontSize: 14),
                                              ),
                                              Text(
                                                "Product Manager",
                                                style: TextStyle(fontSize: 14),
                                              ),
                                            ],
                                          ),
                                          CircleAvatar(
                                            backgroundImage: AssetImage(
                                                'images/Ellipse 4.png'),
                                            radius: 30,
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                  const SizedBox(
                                    height: 5,
                                  ),
                                  const Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Icon(
                                        Icons.timer,
                                        size: 15,
                                      ),
                                      Text(" Belajar 2 menit yang lalu"),
                                    ],
                                  )
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 30,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 50),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text(
                        "Pengaturan Akun",
                        style: TextStyle(
                            fontSize: 16, fontWeight: FontWeight.bold),
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      const Divider(),
                      const SizedBox(
                        height: 20,
                      ),
                      const Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            children: [
                              Icon(Icons.person_pin_circle_outlined,
                                  color: Color(0xFFE3C7FA)),
                              Text(" Edit Profile")
                            ],
                          ),
                          Icon(
                            Icons.arrow_forward,
                            color: Color(0xFFE3C7FA),
                          )
                        ],
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      const Divider(),
                      const SizedBox(
                        height: 20,
                      ),
                      GestureDetector(
                        onTap: () => Get.to(() => const HistoryView(),
                            binding: HistoryBinding()),
                        child: const Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Row(
                              children: [
                                Icon(Icons.person_pin_circle_outlined,
                                    color: Color(0xFFE3C7FA)),
                                Text(" Riwayat")
                              ],
                            ),
                            Icon(
                              Icons.arrow_forward,
                              color: Color(0xFFE3C7FA),
                            )
                          ],
                        ),
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      const Divider(),
                      const SizedBox(
                        height: 20,
                      ),
                      GestureDetector(
                        onTap: () => Get.to(() => const LoginView(),
                            binding: LoginBinding()),
                        child: const Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Row(
                              children: [
                                Icon(Icons.person_pin_circle_outlined,
                                    color: Color(0xFFE3C7FA)),
                                Text(" Keluar")
                              ],
                            ),
                            Icon(
                              Icons.arrow_forward,
                              color: Color(0xFFE3C7FA),
                            )
                          ],
                        ),
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ));
  }
}
