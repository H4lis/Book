import 'package:book/app/routes/app_pages.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class LoginController extends GetxController {
  RxBool isLoading = false.obs;
  TextEditingController emailCc = TextEditingController();
  TextEditingController passwordCc = TextEditingController();

  FirebaseAuth auth = FirebaseAuth.instance;

  Future<void> login() async {
    print("Login");
    if (emailCc.text.isNotEmpty && passwordCc.text.isNotEmpty) {
      isLoading.value = true;
      try {
        UserCredential userCredential = await auth.signInWithEmailAndPassword(
            email: emailCc.text, password: passwordCc.text);

        print(userCredential);
        if (userCredential.user != null) {
          isLoading.value = false;
          if (userCredential.user!.emailVerified == true) {
            Get.snackbar("Berhasil", "Anda Berhasil Login");
            Get.offAllNamed(Routes.WRAPPER_SCREEN);
          } else {
            Get.defaultDialog(
                title: "Belum Verifikasi",
                middleText: "Cek emailmu, dan lakukan verifikasi");
          }
        }
      } on FirebaseAuthException catch (e) {
        isLoading.value = true;
        if (e.code == 'user-not-found') {
          Get.snackbar("Terjadi Kesalahan",
              "Pengguna tidak ditemukan untuk email tersebut");
          print('No user found for that email.');
        } else if (e.code == 'wrong-password') {
          Get.snackbar("Terjadi Kesalahan",
              "Pengguna tidak ditemukan untuk email tersebut");

          print('Password Salah.');
        }
        isLoading.value = false;
      }
    } else {
      Get.snackbar(
          "Terjadi Kesalahan", "Email dan Password Tidak boleh kosong");
    }
  }
}
