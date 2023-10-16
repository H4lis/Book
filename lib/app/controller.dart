import 'package:get/get.dart';

class WrapperScreenController extends GetxController {
  final RxInt selectedIndex = 0.obs;
  var isChecked = false.obs;

  void updateSelectIndex(int index) {
    selectedIndex.value = index;
  }

  void toggleCheckBox (){
  
    isChecked.value = !isChecked.value;
  }
  


}
