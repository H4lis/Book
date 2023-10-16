import 'package:get/get.dart';

import '../controllers/pedahuluan_controller.dart';

class PedahuluanBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<PedahuluanController>(
      () => PedahuluanController(),
    );
  }
}
