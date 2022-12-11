import 'package:flutter/material.dart';
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
          children:  [

            const Text(
              'Login ',
              style: TextStyle(
                  fontWeight: FontWeight.w600,
                  fontFamily: 'Poppins',
                  fontSize: 20),
            ),
            const LoginForm(),
          ],
        ),
      ),
    );
  }
}