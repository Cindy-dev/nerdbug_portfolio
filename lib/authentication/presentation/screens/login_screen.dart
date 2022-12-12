import 'package:flutter/material.dart';
import 'package:portfolio_nerdbug/authentication/presentation/utilities/auth_strings.dart';
import 'package:portfolio_nerdbug/home/presentation/utilities/strings.dart';
import 'package:portfolio_nerdbug/utilities/device_size.dart';
import '../../../utilities/colors.dart';
import '../widget/login_form.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: true,
      body: Container(
        padding: EdgeInsets.only(top: context.screenHeight() / 5),
        height: context.screenHeight(),
        color: AppColors.whiteBackground.withOpacity(.8),
        child: Column(
          children: const [

            Text(
              LoginStrings.login,
              style: TextStyle(
                  fontWeight: FontWeight.w600,
                  fontFamily: FontStrings.fontName,
                  fontSize: 20),
            ),
            LoginForm(),
          ],
        ),
      ),
    );
  }
}