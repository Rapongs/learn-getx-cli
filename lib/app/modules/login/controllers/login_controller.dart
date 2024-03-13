import 'package:get/get.dart';

import '../../../routes/app_pages.dart';

class LoginController extends GetxController {
  void loginButtonController(String email, String password) {
    if (GetUtils.isEmail(email) && password.length >= 8) {
      Get.offNamed(Routes.HOME);
    } else {
      Get.snackbar('Warning!', 'Email atau Password salah');
    }
  }
}
