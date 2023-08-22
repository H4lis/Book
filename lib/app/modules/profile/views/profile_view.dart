import 'package:book/app/shared/constant.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/profile_controller.dart';

class ProfileView extends GetView<ProfileController> {
  ProfileView({Key? key}) : super(key: key);

  final ProfileController controller = Get.put(ProfileController());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: ListView(
      children: [
        Padding(
          padding: const EdgeInsets.all(25),
          child: Column(
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
                    color: Color(0xff006DB4),
                    borderRadius: BorderRadius.circular(14),
                    image: DecorationImage(
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
                          border: Border.all(width: 0.5, color: grey),
                          image: const DecorationImage(
                            image: AssetImage("assets/images/lis.JPG"),
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
                          Text(
                            "Nurhalis",
                            style: bold.copyWith(
                                fontSize: 25, color: Colors.white),
                          ),
                          Text(
                            "nuhalis092@gmail.com",
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
                onTap: () {},
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
                      "Profile Akun",
                      style: medium.copyWith(fontSize: 16, color: greydark),
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 24,
              ),
              InkWell(
                onTap: () {},
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
                      "Ganti Kata Sandi",
                      style: medium.copyWith(fontSize: 16, color: greydark),
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 24,
              ),
              InkWell(
                onTap: () {},
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
                      "About",
                      style: medium.copyWith(fontSize: 16, color: greydark),
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 24,
              ),
              InkWell(
                onTap: () {},
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
                      "Pembaritahuan",
                      style: medium.copyWith(fontSize: 16, color: greydark),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 32,
              ),
              Obx(() => ElevatedButton(
                    onPressed: () {
                      controller.logout();
                    },
                    child: Text(
                      controller.isLoading.isFalse ? "Logout" : "Loading...",
                      style: medium.copyWith(fontSize: 16, color: purple),
                    ),
                    style: ElevatedButton.styleFrom(
                      primary: Colors.transparent,
                      elevation: 0,
                      side: BorderSide(width: 1, color: purple),
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(8)),
                      minimumSize: Size(double.infinity, 50),
                    ),
                  )),
            ],
          ),
        ),
      ],
    ));
  }
}
