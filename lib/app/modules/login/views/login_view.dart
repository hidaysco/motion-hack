import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:motion_hack/app/constant/constants.dart';
import 'package:motion_hack/app/modules/home/bindings/home_binding.dart';
import 'package:motion_hack/app/modules/home/views/home_view.dart';
import 'package:motion_hack/app/modules/register/bindings/register_binding.dart';
import 'package:motion_hack/app/modules/register/views/register_view.dart';

import '../controllers/login_controller.dart';

class LoginView extends GetView<LoginController> {
  const LoginView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 50),
            child: Center(
                child: Column(
              children: [
                SizedBox(
                  height: 32 * (844 / screenSize.height),
                ),
                Text("Masuk",
                    style: GoogleFonts.poppins(
                        color: TColors.primary,
                        fontSize: 32,
                        fontWeight: FontWeight.w600)),
                SizedBox(
                    width: screenSize.width / 2,
                    child: Image.asset('assets/images/logo.png')),
                SizedBox(
                  height: 40 * (844 / screenSize.height),
                ),
                Form(
                    key: const Key("formKey"),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const _labelField(text: 'Nomor Telepon'),
                        SizedBox(
                          height: 3 * (844 / screenSize.height),
                        ),
                        SizedBox(
                          height: 45 * (844 / screenSize.height),
                          child: TextFormField(
                            style: GoogleFonts.poppins(color: TColors.pressed),
                            autofocus: true,
                            keyboardType: TextInputType.phone,
                            decoration: InputDecoration(
                              semanticCounterText:
                                  AutofillHints.telephoneNumber,
                              prefixIcon: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Text('+62',
                                      style: GoogleFonts.poppins(
                                          color: TColors.pressed)),
                                ],
                              ),
                              contentPadding: const EdgeInsets.symmetric(
                                horizontal: 23,
                              ),
                              hintText: "Masukkan nomor telepon",
                              border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(75)),
                            ),
                            // inputFormatters: [controller.maskFormater],
                          ),
                        ),
                        SizedBox(
                          height: 17 * (844 / screenSize.height),
                        ),
                        const _labelField(text: 'Kata sandi'),
                        SizedBox(
                          height: 3 * (844 / screenSize.height),
                        ),
                        SizedBox(
                          height: 45 * (844 / screenSize.height),
                          child: Obx(() => TextField(
                                obscureText: controller.isVisiblePassword.value,
                                decoration: InputDecoration(
                                    suffixIcon: IconButton(
                                        onPressed: () =>
                                            controller.toggleVisiblePassword(),
                                        icon: controller.isVisiblePassword.value
                                            ? const Icon(
                                                Icons.visibility_off,
                                                color: TColors.placeholder,
                                              )
                                            : const Icon(Icons.visibility,
                                                color: TColors.placeholder)),
                                    contentPadding: EdgeInsets.symmetric(
                                        horizontal: 23,
                                        vertical:
                                            14 * (844 / screenSize.height)),
                                    hintText: "Masukkan kata sandi",
                                    focusColor: TColors.pressed,
                                    border: OutlineInputBorder(
                                        borderRadius:
                                            BorderRadius.circular(74))),
                                style: GoogleFonts.poppins(height: 1),
                              )),
                        ),
                        SizedBox(
                          height: 17 * (844 / screenSize.height),
                        ),
                        SizedBox(
                          height: 17 * (844 / screenSize.height),
                        ),
                      ],
                    )),
                SizedBox(
                  height: 20 * (844 / screenSize.height),
                ),
                InkWell(
                  onTap: () => Get.offAll(
                    () => const HomeView(),
                    binding: HomeBinding(),
                  ),
                  splashColor: TColors.pressed,
                  borderRadius: BorderRadius.circular(125),
                  child: Ink(
                    width: double.infinity,
                    height: 45 * (844 / screenSize.height),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(125),
                        gradient: const LinearGradient(
                            colors: [TColors.hover, TColors.main],
                            begin: Alignment.topCenter,
                            end: Alignment.bottomCenter)),
                    child: Center(
                      child: Text(
                        "Masuk",
                        style: GoogleFonts.poppins(
                            color: Colors.white, fontWeight: FontWeight.w600),
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 26 * (844 / screenSize.height),
                ),
                Row(
                  children: [
                    const Flexible(
                      child: Divider(
                        color: TColors.pressed,
                      ),
                    ),
                    Text(
                      " atau ",
                      style: GoogleFonts.poppins(color: TColors.pressed),
                    ),
                    const Flexible(child: Divider(color: TColors.pressed))
                  ],
                ),
                SizedBox(
                  height: 19 * (844 / screenSize.height),
                ),
                Center(
                  child: SizedBox(
                    height: 45 * (844 / screenSize.height),
                    width: screenSize.width * 0.6,
                    child: TextButton(
                        style: ButtonStyle(
                            shape: MaterialStatePropertyAll(
                                RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(74),
                                    side: const BorderSide(
                                        color: TColors.placeholder)))),
                        onPressed: () {},
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Image.asset(
                                'assets/icons/flat-color-icons_google.png'),
                            Text(
                              "Daftar melalui Google",
                              style: GoogleFonts.poppins(
                                  color: TColors.placeholder),
                            )
                          ],
                        )),
                  ),
                ),
                SizedBox(
                  height: 16 * (844 / screenSize.height),
                ),
                Center(
                  child:
                      Text.rich(TextSpan(text: "Belum punya akun? ", children: [
                    WidgetSpan(
                        child: GestureDetector(
                      onTap: () => Get.to(const RegisterView(),
                          binding: RegisterBinding()),
                      child: Text(
                        "Daftar disini",
                        style: GoogleFonts.poppins(
                            decoration: TextDecoration.underline,
                            color: TColors.pressed),
                      ),
                    ))
                  ])),
                )
              ],
            )),
          ),
        ),
      ),
    );
  }
}

class _labelField extends StatelessWidget {
  final String text;
  const _labelField({
    required this.text,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: GoogleFonts.poppins(
          color: TColors.pressed, fontWeight: FontWeight.w600),
    );
  }
}
