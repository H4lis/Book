import 'package:book/app/modules/home/views/home_view.dart';
import 'package:book/app/modules/profile/views/profile_view.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../../../widgets/bottom_navigation.dart';
import '../controllers/wrapper_screen_controller.dart';

class WrapperScreenView extends GetView<WrapperScreenController> {
  WrapperScreenView({super.key});
  final List<Widget> screens = [
    HomeView(),
    ProfileView(),
  ];

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(WrapperScreenController());
    return Scaffold(
      body: Obx(() => screens[controller.selectedIndex.value]),
      // body: Text("sdsdsd"),
      bottomSheet: BottomNavigation(
        onTap: (val) {
          controller.updateSelectIndex(val);
        },
      ),
    );
  }
}
