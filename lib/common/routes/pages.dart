import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:texting/pages/Welcome/index.dart';
import 'package:texting/pages/Sign_in/index.dart';
import 'package:texting/pages/chat/index.dart';
import 'package:texting/pages/contact/index.dart';
import '../../pages/application/index.dart';
import '../middlewares/router_welcome.dart';
import 'names.dart';

class AppPages {
  static const Initial = AppRoutes.Initial;
  static const Application = AppRoutes.Application;
  static final RouteObserver<Route> observer = RouteObserver();
  static List<String> history = [];

  static final List<GetPage> routes = [
    GetPage(
      name: AppRoutes.Initial,
      page: () => const WelcomePage(),
      binding: WelcomeBinding(),
      middlewares: [
        RouteWelcomeMiddleware(priority: 1),
      ],
    ),
    GetPage(
      name: AppRoutes.Sign_in,
      page: () => const SignInPage(),
      binding: SignInBinding(),
      // middlewares: [
      //   RouteWelcomeMiddleware(priority :1),
      // ],
    ),
    GetPage(
      name: AppRoutes.Application,
      page: () => const ApplicationPage(),
      binding: ApplicationBinding(),
      middlewares: [
        // RouteAuthMiddleware(priority :1),
      ],
    ),
    GetPage(
      name: AppRoutes.Contact,
      page: () => const ContactPage(),
      binding: ContactBinding(),
    ),
    GetPage(
      name: AppRoutes.Chat,
      page: () => const ChatPage(),
      binding: ChatBinding(),
    )
  ];
}
