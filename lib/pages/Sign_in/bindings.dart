import 'package:get/get.dart';
import 'package:texting/pages/Sign_in/index.dart';

class SignInBinding implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut<SignInController>(() => SignInController());
  }
}
