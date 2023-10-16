import 'package:book/app/modules/forgot_password/views/forgot_password_view.dart';
import 'package:book/app/modules/update_profile/views/update_profile_view.dart';
import 'package:book/app/routes/app_pages.dart';
import 'package:book/app/shared/constant.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../../about/views/about_view.dart';
import '../controllers/profile_controller.dart';

class ProfileView extends GetView<ProfileController> {
  ProfileView({Key? key}) : super(key: key);

  final ProfileController controller = Get.put(ProfileController());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: StreamBuilder<DocumentSnapshot<Map<String, dynamic>>>(
        stream: controller.streamUser(),
        builder: (context, snap) {
          if (snap.connectionState == ConnectionState.waiting) {
            const Center(
              child: CircularProgressIndicator(),
            );
          }
          if (snap.hasData) {
            Map<String, dynamic> user = snap.data!.data()!;
            return ListView(
              children: [
                Padding(
                  padding: const EdgeInsets.all(25),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const SizedBox(
                        height: 20,
                      ),
                      // GestureDetector(
                      //   onTap: () {
                      //     Navigator.pop(context);
                      //   },
                      //   child: const Icon(
                      //     Icons.arrow_back_ios,
                      //   ),
                      // ),
                      const SizedBox(
                        height: 24,
                      ),
                      Text(
                        "Profile",
                        style: bold.copyWith(fontSize: 24, color: purple),
                      ),
                      const SizedBox(
                        height: 24,
                      ),
                      GestureDetector(
                        // onTap: () => Get.toNamed(Routes.DETAIL_PROFILE),
                        child: Container(
                          decoration: BoxDecoration(
                            boxShadow: [
                              const BoxShadow(
                                  blurRadius: 8,
                                  color: Color.fromARGB(255, 218, 218, 218)),
                            ],
                            borderRadius: BorderRadius.circular(14),
                            image: const DecorationImage(
                                image: AssetImage("assets/images/linear.png"),
                                fit: BoxFit.cover),
                          ),
                          height: 100,
                          width: double.infinity,
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              const SizedBox(
                                width: 9,
                              ),
                              Container(
                                height: 62,
                                width: 62,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(14),
                                  border:
                                      Border.all(width: 2, color: Colors.white),
                                  image: DecorationImage(
                                    image: NetworkImage(user['profile'] ==
                                                null ||
                                            user['profile'] == ""
                                        ? 'https://ui-avatars.com/api/?name=${user['namaLengkap']}'
                                        : user['profile']),
                                    fit: BoxFit.cover,
                                  ),
                                ),
                              ),
                              const SizedBox(
                                width: 15,
                              ),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Container(
                                    width: 210,
                                    child: Text(
                                      "${user['namaLengkap']}",
                                      overflow: TextOverflow.clip,
                                      maxLines: 1,
                                      style: bold.copyWith(
                                          fontSize: 20, color: Colors.white),
                                    ),
                                  ),
                                  Text(
                                    "${user['email']}",
                                    style: regular.copyWith(
                                        fontSize: 13, color: Colors.white),
                                  )
                                ],
                              )
                            ],
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 24,
                      ),
                      InkWell(
                        onTap: () {
                          Get.toNamed(Routes.UPDATE_PROFILE, arguments: user);
                        },
                        child: Row(
                          children: [
                            Container(
                              height: 44,
                              width: 44,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(8),
                              ),
                              child: Image.asset("assets/icons/user.png"),
                            ),
                            const SizedBox(width: 10),
                            Text(
                              "Update Profile",
                              style: medium.copyWith(
                                  fontSize: 16, color: greydark),
                            ),
                          ],
                        ),
                      ),
                      const SizedBox(
                        height: 24,
                      ),
                      InkWell(
                        onTap: () {
                          Get.to(ForgotPasswordView());
                        },
                        child: Row(
                          children: [
                            Container(
                              height: 44,
                              width: 44,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(8),
                              ),
                              child: Image.asset("assets/icons/pass.png"),
                            ),
                            const SizedBox(width: 10),
                            Text(
                              "Update Password",
                              style: medium.copyWith(
                                  fontSize: 16, color: greydark),
                            ),
                          ],
                        ),
                      ),
                      const SizedBox(
                        height: 24,
                      ),
                      InkWell(
                        onTap: () {
                          Get.to(AboutView());
                        },
                        child: Row(
                          children: [
                            Container(
                              height: 44,
                              width: 44,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(8),
                              ),
                              child: Image.asset("assets/icons/about.png"),
                            ),
                            const SizedBox(width: 10),
                            Text(
                              "About",
                              style: medium.copyWith(
                                  fontSize: 16, color: greydark),
                            ),
                          ],
                        ),
                      ),
                      const SizedBox(
                        height: 32,
                      ),
                      Obx(() => ElevatedButton(
                            onPressed: () {
                              controller.logout();
                            },
                            child: Text(
                              controller.isLoading.isFalse
                                  ? "Logout"
                                  : "Loading...",
                              style:
                                  medium.copyWith(fontSize: 16, color: purple),
                            ),
                            style: ElevatedButton.styleFrom(
                              primary: Colors.transparent,
                              elevation: 0,
                              side: const BorderSide(width: 1, color: purple),
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(8)),
                              minimumSize: const Size(double.infinity, 50),
                            ),
                          )),
                    ],
                  ),
                ),
              ],
            );
          } else {
            return Center(
              child: Text("Tidak dapat memuat data user"),
            );
          }
        },
      ),
    );
  }
}
