import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../routes/app_pages.dart';

class RegisterController extends GetxController {
  RxBool isLoading = false.obs;
  final TextEditingController namaLengkapC = TextEditingController();
  final TextEditingController emailC = TextEditingController();
  final TextEditingController passwordC = TextEditingController();
  final TextEditingController konfirmPasswordC = TextEditingController();

  final FirebaseAuth auth = FirebaseAuth.instance;
  final FirebaseFirestore fireStore = FirebaseFirestore.instance;

  void daftar() async {
     isLoading.value = true;
    if (namaLengkapC.text.isNotEmpty &&
        emailC.text.isNotEmpty &&
        passwordC.text.isNotEmpty &&
        konfirmPasswordC.text.isNotEmpty) {
     
      try {
        if (passwordC.text == konfirmPasswordC.text) {
          UserCredential userCredential =
              await auth.createUserWithEmailAndPassword(
            email: emailC.text,
            password: passwordC.text,
          );

          if (userCredential.user != null) {
            String uid = userCredential.user!.uid;

            await fireStore.collection("pengguna").doc(uid).set({
              "namaLengkap": namaLengkapC.text,
              "email": emailC.text,
              "uid": uid,
              "createdAt": DateTime.now().toIso8601String(),
            });
            await userCredential.user!.sendEmailVerification();
            auth.signOut();

            print(userCredential);

            Get.snackbar("Berhasil",
                "Akun Anda Berhasil Dibuat, cek emailmu untuk melakukan verifikasi");
            Get.offAllNamed(Routes.LOGIN);
          }
        } else {
          Get.snackbar(
              "Terjadi Kesalahan", "Password yang anda  masukkan tidak sesuai");
        }
        isLoading.value = false;
      } on FirebaseAuthException catch (e) {
        if (e.code == 'weak-password') {
          Get.snackbar(
              "Terjadi Kesalahan", "Password yang digunakan terlalu singkat");
          print('The password provided is too weak.');
        } else if (e.code == 'email-already-in-use') {
          Get.snackbar(
              "Terjadi Kesalahan", "Email anda sudah terdaftar silahkan login");
          print('The account already exists for that email.');
        }
      } catch (e) {
        Get.snackbar("Terjadi Kesalahan", "Tidak Dapat Mendaftarkan akun");
      }
    } else {
      Get.snackbar("Terjadi Kesalahan", "Nama, Email Harus diisi");
    }
     isLoading.value = false;
  }
}
