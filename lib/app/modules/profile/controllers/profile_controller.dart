import 'package:book/app/routes/app_pages.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:get/get.dart';

class ProfileController extends GetxController {
  RxBool isLoading = false.obs;
  FirebaseAuth auth = FirebaseAuth.instance;

  FirebaseFirestore firestore = FirebaseFirestore.instance;

  Stream<DocumentSnapshot<Map<String, dynamic>>> streamUser() async* {
    String uid = await auth.currentUser!.uid;

    yield* firestore.collection("pengguna").doc(uid).snapshots();
  }

  logout() async {
   

    isLoading.value = true;
    await auth.signOut();
    Get.offAllNamed(Routes.LOGIN);
    isLoading.value = false;
  }
}
