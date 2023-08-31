import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:texting/common/utils/button.dart';
import 'index.dart';

class SignInPage extends GetView<SignInController> {
  const SignInPage({super.key});

  @override
  Widget build(BuildContext context) {
    Widget buildLogo() {
      return Container(
        width: 110.w,
        margin: EdgeInsets.only(top: 84.h),
        child: Column(
          children: [
            Container(
              width: 76.w,
              height: 76.w,
              margin: EdgeInsets.symmetric(horizontal: 15.w),
              child: Stack(
                children: [
                  Positioned(
                    child: Container(
                      height: 76.w,
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.all(Radius.circular(35))),
                    ),
                  ),
                  Positioned(
                    child: Image.asset(
                      "assets/images/chat.png",
                      width: 76.w,
                      height: 76.w,
                      fit: BoxFit.cover,
                    ),
                  )
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.only(top: 15.h, bottom: 15.h),
              child: const Text(
                "Chat Me",
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                  height: 1,
                ),
              ),
            )
          ],
        ),
      );
    }

    Widget buildGoogleLogin() {
      return Container(
        width: 295,
        margin: const EdgeInsets.only(bottom: 280),
        child: Column(children: [
          const Text(
            "Sign In With Your Social Networks",
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: 17,
              fontWeight: FontWeight.w400,
              height: 1,
            ),
          ),
          Padding(
            padding: EdgeInsets.only(left: 10.w, right: 10.w, top: 40.w),
            child: Container(
                child: Column(
              children: [
                MyButton(
                    onTap: () => controller.handleSignIn(),
                    imgUrl: "assets/images/google.png"),
                const SizedBox(
                  height: 10,
                ),
                MyButton(
                    onTap: () => controller.handleSignIn(),
                    imgUrl: "assets/images/apple.png"),
              ],
            )),
          )
        ]),
      );
    }

    return Scaffold(
        body: Center(
      child: Column(children: [
        buildLogo(),
        const Spacer(),
        buildGoogleLogin(),
      ]),
    ));
  }
}
