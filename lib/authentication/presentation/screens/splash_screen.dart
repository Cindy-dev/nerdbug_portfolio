import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:portfolio_nerdbug/authentication/presentation/utilities/auth_strings.dart';
import 'package:portfolio_nerdbug/home/presentation/screens/home_screen.dart';
import 'package:portfolio_nerdbug/home/presentation/widget/text_widget.dart';
import 'package:portfolio_nerdbug/utilities/colors.dart';
import 'package:portfolio_nerdbug/utilities/device_size.dart';
import '../../../utilities/navigators.dart';
import 'login_screen.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    Future.delayed(const Duration(seconds: 3), () {
      if (FirebaseAuth.instance.currentUser == null) {
        // user not logged ==> Login Screen
        navigatePush(context, const LoginScreen());
      } else {
        // user already logged in ==> Home Screen
        navigatePush(context, const HomeScreen());
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: context.screenHeight(),
        color: AppColors.bgColor.withOpacity(0.9),
        child: const Center(
            child: TextWidget(
          text: LoginStrings.portfolio,
          fcolor: AppColors.whiteColor,
          fsize: 40,
        )),
      ),
    );
  }
}
