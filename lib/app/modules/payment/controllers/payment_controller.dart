import 'package:get/get.dart';

class PaymentModel {
  final String title, icon;
  PaymentModel({required this.title, required this.icon});
}

class PaymentController extends GetxController {
  //TODO: Implement PaymentController

  final selected = 0.obs;
  final List<PaymentModel> listPayment = [
    PaymentModel(title: 'ShopeePay', icon: 'spay.png'),
    PaymentModel(title: 'DANA', icon: 'dana.png'),
    PaymentModel(title: 'GoPay', icon: 'gopay.png'),
  ];
  @override
  void onInit() {
    super.onInit();
  }

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
  }
}
