import 'package:flutter/material.dart';
import 'package:portfolio_nerdbug/authentication/presentation/utilities/auth_strings.dart';
import 'package:portfolio_nerdbug/home/presentation/utilities/strings.dart';
import 'package:portfolio_nerdbug/utilities/device_size.dart';

import '../../../utilities/colors.dart';
import '../widget/signup_form.dart';

class SignupScreen extends StatelessWidget {
  const SignupScreen({Key? key}) : super(key: key);

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
              SignupStrings.signup,
              style: TextStyle(
                  fontWeight: FontWeight.w600,
                  fontFamily: FontStrings.fontName,
                  fontSize: 20),
            ),

            SignupForm(),
          ],
        ),
      ),
    );
  }
}
