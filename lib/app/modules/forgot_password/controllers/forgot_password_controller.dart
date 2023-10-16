import 'package:book/app/modules/login/views/login_view.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ForgotPasswordController extends GetxController {
  RxBool isLoading = false.obs;
  TextEditingController emailC = TextEditingController();

  FirebaseAuth auth = FirebaseAuth.instance;
  void resetPass() async {
    if (emailC.text.isNotEmpty) {
      isLoading.value = true;
      try {
        await auth.sendPasswordResetEmail(email: emailC.text);
        Get.snackbar("Berhasil",
            "Kami telah mengirim email reset password, periksa email kamu");
        await auth.signOut();

        Get.to(LoginView());
      } catch (e) {
        Get.snackbar(
            "Terjadi Kesalahan", "Tidak dapat mengirim email reset password.");
      } finally {
        isLoading.value = false;
      }
    } else {
      Get.snackbar("Terjadi Kesalahan", "Form Email Tidak boleh kosong");
    }
  }
}
