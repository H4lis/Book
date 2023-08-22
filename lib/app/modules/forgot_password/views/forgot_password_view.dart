import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../../../shared/constant.dart';
import '../controllers/forgot_password_controller.dart';

class ForgotPasswordView extends GetView<ForgotPasswordController> {
  ForgotPasswordView({Key? key}) : super(key: key);
  final ForgotPasswordController controller =
      Get.put(ForgotPasswordController());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          Padding(
            padding: const EdgeInsets.all(26),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(
                  height: 20,
                ),
                Row(
                  children: [
                    GestureDetector(
                      onTap: () {
                        Navigator.pop(context);
                      },
                      child: const Icon(
                        Icons.arrow_back_ios,
                      ),
                    ),
                    Text(
                      "   lupa Password",
                      style: bold.copyWith(fontSize: 24, color: purple),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 34,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 10),
                  child: TextField(
                    controller: controller.emailC,
                    cursorColor: purple,
                    decoration: InputDecoration(
                        hintText: 'Email',
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
                ),
                SizedBox(
                  height: 24,
                ),
                Padding(
                  padding: const EdgeInsets.all(0),
                  child: Obx(() => ElevatedButton(
                        onPressed: () {
                          controller.resetPass();
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
                          controller.isLoading.isFalse
                              ? "Reset Password"
                              : "Loading...",
                          style: semiBold.copyWith(fontSize: 18),
                        ),
                      )),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
