import 'package:get/get.dart';
import 'package:texting/pages/application/index.dart';
import 'package:texting/pages/contact/controller.dart';

class ApplicationBinding implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut<ApplicationController>(() => ApplicationController());
    Get.lazyPut<ContactController>(() => ContactController());
  }
}
