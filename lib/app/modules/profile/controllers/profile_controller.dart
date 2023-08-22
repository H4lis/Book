import 'package:book/app/routes/app_pages.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:get/get.dart';

class ProfileController extends GetxController {
  RxBool isLoading = false.obs;
  FirebaseAuth auth = FirebaseAuth.instance;

  logout() async {
    print('Logout');

    isLoading.value = true;
    await auth.signOut();
    Get.offAllNamed(Routes.LOGIN);
    isLoading.value = false;
  }
}
