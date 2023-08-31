import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:texting/common/entities/user.dart';
import 'package:texting/common/routes/names.dart';
import 'package:texting/common/store/config.dart';

class RouteWelcomeMiddleware extends GetMiddleware {
  @override
  int? priority = 0;

  RouteWelcomeMiddleware({required this.priority});

  @override
  RouteSettings? redriect(String? route) {
    print(ConfigStore.to.isFirstOpen);
    if (ConfigStore.to.isFirstOpen == false) {
      return null;
    } else if (UserStore.to.isLogin == true) {
      return const RouteSettings(name: AppRoutes.Application);
    } else {
      return const RouteSettings(name: AppRoutes.Sign_in);
    }
  }
}
