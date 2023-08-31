import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:package_info_plus/package_info_plus.dart';
import 'package:texting/common/store/storage.dart';

class ConfigStore extends GetxController {
  static ConfigStore get to => Get.find();

  bool isFirstOpen = false;
  PackageInfo? _platform;
  String get version => _platform?.version ?? '-';
  bool get isRelease => bool.fromEnvironment("dart.vm.product");
  Locale locale = Locale('en', 'US');
  List<Locale> languages = [Locale('en', 'US'), Locale('zh', 'CN')];

  @override
  void onInit() {
    super.onInit();
    isFirstOpen = StorageService.to.getBool("STORAGE_DEVICE_FIRST_OPEN_KEY");
  }

  Future getPlatform() async {
    _platform = await PackageInfo.fromPlatform();
  }

  Future<bool> saveAlreadyOpen() {
    return StorageService.to.setBool("STORAGE_DEVICE_FIRST_OPEN_KEY", true);
  }

  void OnInitLocale() {
    var langCode = StorageService.to.getString("STORAGE_LANGUAGE_CODE");
    if (langCode.isEmpty) return;
    var index = languages.indexWhere((element) {
      return element.languageCode == langCode;
    });
    if (index < 0) return;
    locale = languages[index];
  }

  void onLocalUpdate(Locale value) {
    locale = value;
    Get.updateLocale(value);
    StorageService.to.setString("STORAGE_LANGUAGE_CODE", value.languageCode);
  }
}
