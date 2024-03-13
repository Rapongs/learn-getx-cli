import 'package:get/get.dart';

import '../../../routes/app_pages.dart';

class RegisterController extends GetxController {
  void registerButtonController(String nama, String email, String password) {
    if (nama.isNotEmpty && email.isNotEmpty && password.isNotEmpty) {
      Get.defaultDialog(
        title: 'Akun berhasil dibuat!',
        middleText: 'Silahkan login dengan akun yang telah didaftarkan!',
        onConfirm: () {
          Get.offAllNamed(Routes.LOGIN);
        },
      );
    } else {
      Get.snackbar('Warning!', 'Form tidak boleh kosong!');
    }
  }
}
