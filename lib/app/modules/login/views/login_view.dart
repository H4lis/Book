import 'package:book/app/modules/forgot_password/views/forgot_password_view.dart';
import 'package:book/app/modules/register/views/register_view.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../../../shared/constant.dart';
import '../controllers/login_controller.dart';

class LoginView extends GetView<LoginController> {
  const LoginView({Key? key}) : super(key: key);
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
          padding: const EdgeInsets.symmetric(horizontal: 20),
          children: [
            const SizedBox(
              height: 170,
            ),
            Center(
              child: Text(
                "Selamat Datang\nkembali!",
                style: bold.copyWith(fontSize: 24),
                textAlign: TextAlign.center,
              ),
            ),
            const SizedBox(
              height: 8,
            ),
            Image.asset(
              "assets/images/studying.png",
              height: 186,
            ),
            const SizedBox(
              height: 42,
            ),
            Container(
              margin: const EdgeInsets.symmetric(horizontal: 16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  TextField(
                    controller: controller.emailCc,
                    cursorColor: purple,
                    decoration: InputDecoration(
                        hintText: 'Alamat Email',
                        contentPadding: const EdgeInsets.symmetric(
                            vertical: 14, horizontal: 14),
                        hintStyle:
                            light.copyWith(fontSize: 14), // Pesan petunjuk
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
                  TextField(
                    controller: controller.passwordCc,
                    cursorColor: purple,
                    decoration: InputDecoration(
                        hintText: 'Password',
                        contentPadding: const EdgeInsets.symmetric(
                            vertical: 14, horizontal: 14),
                        hintStyle:
                            light.copyWith(fontSize: 14), // Pesan petunjuk
                        border: OutlineInputBorder(
                            borderRadius:
                                BorderRadius.circular(40)), // Garis pinggir
                        focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(40),
                            borderSide: const BorderSide(color: purple))),
                    style: regular.copyWith(fontSize: 14),
                  ),
                  const SizedBox(
                    height: 8,
                  ),
                  InkWell(
                    onTap: () {
                      Get.to(ForgotPasswordView());
                    },
                    child: Text(
                      "  Lupa Password?",
                      style: semiBold.copyWith(fontSize: 14, color: purple),
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Obx(() => ElevatedButton(
                    onPressed: () async {
                      if (controller.isLoading.isFalse) {
                        await controller.login();
                      }
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
                      controller.isLoading.isFalse ? "Masuk" : "Loading...",
                      style: semiBold.copyWith(fontSize: 18),
                    ),
                  )),
            ),
            const SizedBox(
              height: 14,
            ),
            Center(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Belum memiliki akun? ",
                    style: light.copyWith(fontSize: 14),
                  ),
                  InkWell(
                    onTap: () {
                      Get.to(RegisterView());
                    },
                    child: Text(
                      "Daftar",
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
