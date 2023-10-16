import 'dart:io';

import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../../../shared/constant.dart';
import '../controllers/update_profile_controller.dart';

class UpdateProfileView extends GetView<UpdateProfileController> {
  final Map<String, dynamic> user = Get.arguments;
  @override
  Widget build(BuildContext context) {
    print(user);
    controller.namaLengkapC.text = user["namaLengkap"];
    controller.emailC.text = user["email"];
    ;
    return SafeArea(
      child: Scaffold(
          body: ListView(
        padding: const EdgeInsets.all(25),
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(
                height: 20,
              ),
              GestureDetector(
                onTap: () {
                  Navigator.pop(context);
                },
                child: const Icon(
                  Icons.arrow_back_ios,
                ),
              ),
            ],
          ),
          const SizedBox(
            height: 24,
          ),
          Text(
            "Update profile",
            style: bold.copyWith(fontSize: 24, color: purple),
          ),
          const SizedBox(
            height: 24,
          ),
          Container(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Nama Lengkap",
                  style: medium.copyWith(fontSize: 16, color: black),
                ),
                const SizedBox(
                  height: 4,
                ),
                TextField(
                  controller: controller.namaLengkapC,
                  cursorColor: purple,
                  decoration: InputDecoration(
                      hintText: 'Nama lengkap',
                      contentPadding: const EdgeInsets.symmetric(
                          vertical: 14, horizontal: 14),
                      hintStyle: light.copyWith(fontSize: 14), // Pesan petunjuk
                      border: OutlineInputBorder(
                          borderRadius:
                              BorderRadius.circular(40)), // Garis pinggir
                      focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(40),
                          borderSide: const BorderSide(color: purple))),
                  style: regular.copyWith(fontSize: 14),
                ),
                const SizedBox(
                  height: 22,
                ),
                Text(
                  "Alamat Email",
                  style: medium.copyWith(fontSize: 16, color: black),
                ),
                const SizedBox(
                  height: 4,
                ),
                TextField(
                  readOnly: true,
                  controller: controller.emailC,
                  cursorColor: purple,
                  decoration: InputDecoration(
                      hintText: 'Alamat Email',
                      contentPadding: const EdgeInsets.symmetric(
                          vertical: 14, horizontal: 14),
                      hintStyle: light.copyWith(fontSize: 14), // Pesan petunjuk
                      border: OutlineInputBorder(
                          borderRadius:
                              BorderRadius.circular(40)), // Garis pinggir
                      focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(40),
                          borderSide: const BorderSide(color: purple))),
                  style: regular.copyWith(fontSize: 14),
                ),
                const SizedBox(
                  height: 22,
                )
              ],
            ),
          ),
          Text(
            "Photo Profile",
            style: medium.copyWith(fontSize: 16, color: black),
          ),
          const SizedBox(
            height: 4,
          ),
          GetBuilder<UpdateProfileController>(
            builder: (c) {
              if (c.image != null) {
                return Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      height: 122,
                      width: 122,
                      child: Image.file(
                        File(c.image!.path),
                        fit: BoxFit.cover,
                      ),
                    ),
                    TextButton(
                        onPressed: () {
                          controller.pickImage();
                        },
                        child: Text("choose"))
                  ],
                );
              } else {
                if (user['profile'] != null) {
                  return Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        height: 122,
                        width: 122,
                        child: Image.network(
                          user['profile'],
                          fit: BoxFit.cover,
                        ),
                      ),
                      TextButton(
                          onPressed: () {
                            controller.pickImage();
                          },
                          child: Text("choose"))
                    ],
                  );
                }
                return Container(
                  width: MediaQuery.of(context).size.width,
                  height: 122,
                  decoration: BoxDecoration(
                    border: Border.all(width: 1, color: grey),
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: InkWell(
                    onTap: () {
                      controller.pickImage();
                    },
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Image.asset(
                          "assets/icons/camera.png",
                          width: 24,
                        ),
                        SizedBox(
                          height: 8,
                        ),
                        Text(
                          "Add your photos here",
                          style: medium.copyWith(fontSize: 12, color: grey),
                        )
                      ],
                    ),
                  ),
                );
              }
            },
          ),
          Padding(
            padding: const EdgeInsets.only(top: 22),
            child: Obx(() => ElevatedButton(
                  onPressed: () {
                    controller.updateProfile(user['uid']);
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: purple,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20),
                    ),
                    elevation: 0,
                    minimumSize: const Size(double.infinity, 54),
                  ),
                  child: Text(
                    controller.isLoading.isFalse ? "Update" : "Loading...",
                    style: semiBold.copyWith(fontSize: 18),
                  ),
                )),
          ),
          const SizedBox(
            height: 14,
          ),
        ],
      )),
    );
  }
}
