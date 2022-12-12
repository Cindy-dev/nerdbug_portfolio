import 'dart:io';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:portfolio_nerdbug/utilities/colors.dart';
import '../../../utilities/navigators.dart';

void errorDialog(BuildContext context, String error, String title) {
  if (Platform.isIOS) {
    showCupertinoDialog(
        context: context,
        builder: (context) {
          return CupertinoAlertDialog(
            title: Text(title,
                textAlign: TextAlign.center,
                style: const TextStyle(
                    fontSize: 30,
                    //fontFamily: ,
                    fontWeight: FontWeight.w600,
                    color: AppColors.bgColor)),
            content: Text(error,
                textAlign: TextAlign.center,
                style: const TextStyle(
                    fontSize: 20,
                    // fontFamily: fontName,
                    fontWeight: FontWeight.w500,
                    color: AppColors.textColor)),
            actions: [
              CupertinoDialogAction(
                child: const Text("OK",
                    style: TextStyle(
                        fontSize: 15,
                        //fontFamily: fontName,
                        fontWeight: FontWeight.w700,
                        color: AppColors.bgColor)),
                onPressed: () => navigatePop(context),
              )
            ],
          );
        });
  } else {
    showDialog(
        context: context,
        builder: (context) {
          return AlertDialog(
            title: Text(title,
                textAlign: TextAlign.center,
                style: const TextStyle(
                    fontSize: 30,
                    //fontFamily: fontName,
                    fontWeight: FontWeight.w600,
                    color: AppColors.bgColor)),
            content: Text(error,
                textAlign: TextAlign.center,
                style: const TextStyle(
                    fontSize: 20,
                    //fontFamily: fontName,
                    fontWeight: FontWeight.w500,
                    color: AppColors.textColor)),
            actions: [
              CupertinoDialogAction(
                child: const Text("OK",
                    textAlign: TextAlign.right,
                    style: TextStyle(
                        fontSize: 15,
                        //fontFamily: fontName,
                        fontWeight: FontWeight.w700,
                        color: AppColors.bgColor)),
                onPressed: () => navigatePop(context),
              )
            ],
          );
        });
  }
}
