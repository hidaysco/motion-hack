import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mask_text_input_formatter/mask_text_input_formatter.dart';

class RegisterController extends GetxController {
  //TODO: Implement RegisterController

  final isVisiblePassword = true.obs;
  final isVisibleCPassword = true.obs;
  final name = TextEditingController().obs;
  final phone = TextEditingController().obs;
  final password = TextEditingController().obs;
  final confirmPassword = TextEditingController().obs;
  final currentStep = 0.obs;

  final maskFormater = MaskTextInputFormatter(
      mask: '###-###-###-###',
      filter: {'#': RegExp(r'[0-9]')},
      type: MaskAutoCompletionType.lazy);

  void toggleVisiblePassword() {
    isVisiblePassword.value = !isVisiblePassword.value;
  }

  void toggleVisibleCPassword() {
    isVisibleCPassword.value = !isVisibleCPassword.value;
  }
}
