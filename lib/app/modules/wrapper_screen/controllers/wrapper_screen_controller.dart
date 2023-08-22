import 'package:get/get.dart';

class WrapperScreenController extends GetxController {
  final RxInt selectedIndex = 0.obs;

  void updateSelectIndex(int index) {
    selectedIndex.value = index; 
  }

  final count = 0.obs;
  @override
  void onInit() {
    super.onInit();
  }

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
  }

  void increment() => count.value++;
}
