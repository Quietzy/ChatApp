import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'index.dart';

class ApplicationController extends GetxController {
  final state = ApplicationState();
  ApplicationController();

  late final List<String> tabTitles;
  late final PageController pageController;
  late final List<BottomNavigationBarItem> bottomTabs;

  void handlePageChanged(int index) {
    state.page = index;
  }

  void handleNavBarTap(int index) {
    pageController.jumpToPage(index);
  }

  @override
  void onInit() {
    super.onInit();
    tabTitles = ['Chat', 'Contact', 'Profile'];
    bottomTabs = <BottomNavigationBarItem>[
      const BottomNavigationBarItem(
          icon: Icon(
            Icons.message,
            color: Colors.grey,
          ),
          activeIcon: Icon(
            Icons.message,
            color: Colors.blue,
          ),
          label: 'Chat',
          backgroundColor: Colors.black),
      const BottomNavigationBarItem(
          icon: Icon(
            Icons.contact_page,
            color: Colors.grey,
          ),
          activeIcon: Icon(
            Icons.contact_page,
            color: Colors.blue,
          ),
          label: 'Contacts',
          backgroundColor: Colors.black),
      const BottomNavigationBarItem(
          icon: Icon(
            Icons.person,
            color: Colors.grey,
          ),
          activeIcon: Icon(
            Icons.person,
            color: Colors.blue,
          ),
          label: 'Profile',
          backgroundColor: Colors.black),
    ];

    pageController = PageController(initialPage: state.page);
  }

  @override
  void dispose() {
    pageController.dispose();
    super.dispose();
  }
}
