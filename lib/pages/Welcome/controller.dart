import 'package:get/get.dart';
import 'package:texting/common/routes/names.dart';
import 'package:texting/pages/Welcome/state.dart';

import '../../common/store/config.dart';

class WelcomeController extends GetxController {
  final state = WelcomeState();
  WelcomeController();
  changePage(int index) async {
    state.index.value = index;
  }

  handleSignIn() async {
    await ConfigStore.to.saveAlreadyOpen();
    Get.offAndToNamed(AppRoutes.Sign_in);
  }
}
