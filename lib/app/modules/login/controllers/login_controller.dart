import 'package:book/app/routes/app_pages.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class LoginController extends GetxController {
  RxBool isLoading = false.obs;
  TextEditingController emailCc = TextEditingController();
  TextEditingController passwordCc = TextEditingController();

  RxBool isPasswordVisible = false.obs; // Tambahkan ini

  void togglePasswordVisibility() {
    isPasswordVisible.value = !isPasswordVisible.value;
  }

  FirebaseAuth auth = FirebaseAuth.instance;

  Future<void> login() async {
    if (emailCc.text.isNotEmpty && passwordCc.text.isNotEmpty) {
      isLoading.value = true;
      try {
        UserCredential userCredential = await auth.signInWithEmailAndPassword(
            email: emailCc.text, password: passwordCc.text);

        if (userCredential.user != null) {
          isLoading.value = false;
          if (userCredential.user!.emailVerified == true) {
            Get.snackbar("Berhasil", "Anda Berhasil Login");
            Get.offAllNamed(Routes.FAB_TABS);
          } else {
            Get.defaultDialog(
                title: "Anda Belum Verifikasi",
                middleText: "Cek email anda, dan lakukan verifikasi");
          }
        }
      } on FirebaseAuthException catch (e) {
        isLoading.value = true;
        if (e.code == 'user-not-found') {
          Get.snackbar("Terjadi Kesalahan",
              "Pengguna tidak ditemukan untuk email tersebut");
        } else if (e.code == 'wrong-password') {
          Get.snackbar("Terjadi Kesalahan",
              "Pengguna tidak ditemukan untuk email tersebut");
        }
        isLoading.value = false;
      }
    } else {
      Get.snackbar(
          "Terjadi Kesalahan", "Email dan Password Tidak boleh kosong");
    }
  }
}
