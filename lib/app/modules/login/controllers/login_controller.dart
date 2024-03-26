import 'package:get/get.dart';

class LoginController extends GetxController {
  //TODO: Implement LoginController

  final isVisiblePassword = false.obs;
  void toggleVisiblePassword() {
    isVisiblePassword.value = !isVisiblePassword.value;
  }
}
