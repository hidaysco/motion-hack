import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:motion_hack/app/constant/constants.dart';
import 'package:motion_hack/app/modules/payment/views/success_view.dart';

import '../controllers/payment_controller.dart';

class PaymentView extends GetView<PaymentController> {
  const PaymentView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Text(
          'Pembayaran',
          style: GoogleFonts.poppins(
              fontWeight: FontWeight.w600,
              fontSize: 20,
              color: TColors.pressed),
        ),
        centerTitle: true,
      ),
      body: Container(
        child: Padding(
          padding: const EdgeInsets.symmetric(
              horizontal: TSize.defaultHorizontalSpace),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: 25 * (screenSize.height / TSize.defaultHeight),
              ),
              Text(
                'Rincian Pembayaran',
                style: GoogleFonts.poppins(
                    color: TColors.primary,
                    fontSize: TSize.heading6,
                    fontWeight: FontWeight.w500),
              ),
              SizedBox(
                height: 25 * (screenSize.height / TSize.defaultHeight),
              ),
              Container(
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8),
                    border: Border.all(color: TColors.placeholder)),
                child: const Padding(
                  padding: EdgeInsets.all(TSize.defaultHorizontalSpace),
                  child: Column(
                    children: [
                      _itemDetail(
                        title: 'Nama Proyek',
                        value: 'Proyek Candi',
                      ),
                      _itemDetail(
                        title: 'Nama Penanggung Jawab',
                        value: 'Luffy Dona',
                      ),
                      _itemDetail(
                        title: 'Nama Mentor',
                        value: 'Roronoa Zoro',
                      ),
                      _itemDetailPrice(
                        title: 'Harga Total',
                        value: 'Rp 100.00,00',
                      ),
                    ],
                  ),
                ),
              ),
              const SizedBox(
                height: 50,
              ),
              for (int i = 0; i < controller.listPayment.length; i++)
                GestureDetector(
                  onTap: () {
                    controller.selected.value = i;
                  },
                  child: Container(
                    decoration: BoxDecoration(
                        color: Colors.white,
                        border: Border(
                            top: BorderSide(color: TColors.placeholder),
                            bottom: BorderSide(
                                color: TColors.placeholder,
                                width: (i + 1 == controller.listPayment.length)
                                    ? 1
                                    : 0))),
                    width: double.infinity,
                    child: Padding(
                      padding: const EdgeInsets.symmetric(vertical: 5),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            children: [
                              Image.asset(
                                  'assets/icons/${controller.listPayment[i].icon}'),
                              Padding(
                                padding: const EdgeInsets.only(left: 10),
                                child: Text(controller.listPayment[i].title),
                              ),
                            ],
                          ),
                          Obx(() => Radio(
                              hoverColor: TColors.placeholder,
                              value: i,
                              groupValue: controller.selected.value,
                              onChanged: (value) {
                                controller.selected.value = i;
                              }))
                        ],
                      ),
                    ),
                  ),
                ),
              const SizedBox(
                height: 50,
              ),
              InkWell(
                onTap: () => {Get.to(() => const SuccessView())},
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
                      "Konfirmasi",
                      style: GoogleFonts.poppins(
                          color: Colors.white, fontWeight: FontWeight.w600),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class _itemDetail extends StatelessWidget {
  const _itemDetail({
    super.key,
    required this.title,
    required this.value,
  });

  final String title, value;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 4),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            title,
            style: GoogleFonts.poppins(
                color: TColors.pressed,
                fontSize: 12,
                fontWeight: FontWeight.w500),
          ),
          Text(
            value,
            style: GoogleFonts.poppins(
              color: TColors.primary,
              fontSize: 10,
            ),
          ),
        ],
      ),
    );
  }
}

class _itemDetailPrice extends StatelessWidget {
  const _itemDetailPrice({
    super.key,
    required this.title,
    required this.value,
  });

  final String title, value;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 4),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            title,
            style: GoogleFonts.poppins(
                color: TColors.pressed,
                fontSize: 12,
                fontWeight: FontWeight.w500),
          ),
          Text(
            value,
            style: GoogleFonts.poppins(
              color: TColors.primary,
              fontWeight: FontWeight.w600,
              fontSize: 10,
            ),
          ),
        ],
      ),
    );
  }
}
