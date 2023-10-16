import 'dart:io';
import 'dart:math';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:image_picker/image_picker.dart';
import 'package:firebase_storage/firebase_storage.dart';

class UpdateProfileController extends GetxController {
  RxBool isLoading = false.obs;
  TextEditingController namaLengkapC = TextEditingController();
  TextEditingController emailC = TextEditingController();

  FirebaseFirestore firestore = FirebaseFirestore.instance;
  FirebaseStorage storage = FirebaseStorage.instance;

  final ImagePicker picker = ImagePicker();
  XFile? image;

  void pickImage() async {
    image = await picker.pickImage(source: ImageSource.gallery);
    if (image != null) {
      print(image!.name);
      print(image!.name.split(".").last);
      print(image!.name);
    } else {
      print(image);
    }
    update();
  }

  Future<void> updateProfile(String uid) async {
    if (namaLengkapC.text.isNotEmpty && emailC.text.isNotEmpty) {
      isLoading.value = true;
      try {
        Map<String, dynamic> data = {"namaLengkap": namaLengkapC.text};
        if (image != null) {
          File file = File(image!.path);
          String ext = image!.name.split(".").last;

          await storage.ref('$uid/profile.$ext').putFile(file);
          String urlImage =
              await storage.ref('$uid/profile.$ext').getDownloadURL();

          data.addAll({"profile": urlImage});

          //  await mountainsRef.putFile(file);
        }
        await firestore.collection("pengguna").doc(uid).update(data);
        Get.snackbar("Berhasil", "Berhasil Update Profile");
        Navigator.pop(Get.overlayContext!);
      } catch (e) {
        Get.snackbar("Terjadi Kesalahan", "Tidak dapat Update profile");
      } finally {
        isLoading.value = true;
      }
    }
  }
}
