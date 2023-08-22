import 'package:book/app/modules/login/views/login_view.dart';
import 'package:book/app/shared/constant.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/register_controller.dart';

class RegisterView extends GetView<RegisterController> {
  RegisterView({Key? key}) : super(key: key);

  final RegisterController controller = Get.put(RegisterController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Stack(
      children: [
        Image.asset(
          "assets/images/baground_register.png",
          width: 236,
        ),
        ListView(
          padding: EdgeInsets.symmetric(horizontal: 20),
          children: [
            SizedBox(
              height: 170,
            ),
            Center(
              child: Text(
                "Selamat Bergabung!",
                style: bold.copyWith(fontSize: 24),
              ),
            ),
            SizedBox(
              height: 8,
            ),
            Center(
              child: Text(
                "Mari persiapkan karir Anda.",
                style: light.copyWith(fontSize: 12),
              ),
            ),
            SizedBox(
              height: 46,
            ),
            Container(
              margin: EdgeInsets.symmetric(horizontal: 16),
              child: Column(
                children: [
                  TextField(
                    controller: controller.namaLengkapC,
                    cursorColor: purple,
                    decoration: InputDecoration(
                        hintText: 'Nama lengkap',
                        contentPadding:
                            EdgeInsets.symmetric(vertical: 14, horizontal: 14),
                        hintStyle:
                            light.copyWith(fontSize: 14), // Pesan petunjuk
                        border: OutlineInputBorder(
                            borderRadius:
                                BorderRadius.circular(40)), // Garis pinggir
                        focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(40),
                            borderSide: BorderSide(color: purple))),
                    style: regular.copyWith(fontSize: 14),
                  ),
                  SizedBox(
                    height: 22,
                  ),
                  TextField(
                    controller: controller.emailC,
                    cursorColor: purple,
                    decoration: InputDecoration(
                        hintText: 'Alamat Email',
                        contentPadding:
                            EdgeInsets.symmetric(vertical: 14, horizontal: 14),
                        hintStyle:
                            light.copyWith(fontSize: 14), // Pesan petunjuk
                        border: OutlineInputBorder(
                            borderRadius:
                                BorderRadius.circular(40)), // Garis pinggir
                        focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(40),
                            borderSide: BorderSide(color: purple))),
                    style: regular.copyWith(fontSize: 14),
                  ),
                  SizedBox(
                    height: 22,
                  ),
                  TextField(
                    controller: controller.passwordC,
                    cursorColor: purple,
                    decoration: InputDecoration(
                        hintText: 'Password',
                        contentPadding:
                            EdgeInsets.symmetric(vertical: 14, horizontal: 14),
                        hintStyle:
                            light.copyWith(fontSize: 14), // Pesan petunjuk
                        border: OutlineInputBorder(
                            borderRadius:
                                BorderRadius.circular(40)), // Garis pinggir
                        focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(40),
                            borderSide: BorderSide(color: purple))),
                    style: regular.copyWith(fontSize: 14),
                  ),
                  SizedBox(
                    height: 22,
                  ),
                  TextField(
                    controller: controller.konfirmPasswordC,
                    cursorColor: purple,
                    decoration: InputDecoration(
                        hintText: 'Konfirmasi Password',
                        contentPadding:
                            EdgeInsets.symmetric(vertical: 14, horizontal: 14),
                        hintStyle:
                            light.copyWith(fontSize: 14), // Pesan petunjuk
                        border: OutlineInputBorder(
                            borderRadius:
                                BorderRadius.circular(40)), // Garis pinggir
                        focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(40),
                            borderSide: BorderSide(color: purple))),
                    style: regular.copyWith(fontSize: 14),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 32,
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Obx(() => ElevatedButton(
                    onPressed: () {
                      controller.daftar();
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: purple,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20),
                      ),
                      elevation: 0,
                      minimumSize: Size(double.infinity, 54),
                    ),
                    child: Text(
                      controller.isLoading.isFalse ? "Daftar" : "Loading...",
                      style: semiBold.copyWith(fontSize: 18),
                    ),
                  )),
            ),
            SizedBox(
              height: 14,
            ),
            Center(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Sudah memiliki akun? ",
                    style: light.copyWith(fontSize: 14),
                  ),
                  InkWell(
                    onTap: () {
                      Get.to(LoginView());
                    },
                    child: Text(
                      "Masuk",
                      style: bold.copyWith(fontSize: 14, color: purple),
                    ),
                  ),
                ],
              ),
            ),
          ],
        )
      ],
    ));
  }
}
