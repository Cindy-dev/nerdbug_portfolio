import 'package:flutter/material.dart';
import 'package:portfolio_nerdbug/home/presentation/utilities/strings.dart';
import 'package:portfolio_nerdbug/utilities/colors.dart';
import 'package:portfolio_nerdbug/utilities/device_size.dart';

class AuthButton extends StatelessWidget {
  String text;
  AuthButton(this.text, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      margin: const EdgeInsets.fromLTRB(24, 24, 24, 45),
      height: context.screenHeight() / 18,
      width: context.screenHeight() / 2,
      decoration: BoxDecoration(
          color: AppColors.bgColor, borderRadius: BorderRadius.circular(10)),
      child: Text(
        text,
        style: const TextStyle(
            color: AppColors.whiteColor,
            fontWeight: FontWeight.w600,
            fontFamily: FontStrings.fontName,
            fontSize: 18),
      ),
    );
  }
}
