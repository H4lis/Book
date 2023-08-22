import 'package:get/get.dart';

import '../controllers/wrapper_screen_controller.dart';

class WrapperScreenBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<WrapperScreenController>(
      () => WrapperScreenController(),
    );
  }
}
