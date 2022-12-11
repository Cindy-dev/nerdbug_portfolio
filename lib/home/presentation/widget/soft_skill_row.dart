import 'package:flutter/material.dart';
import 'text_widget.dart';

class SoftSkillRow extends StatelessWidget {
  final String softText1;
  final String softText2;

  const SoftSkillRow(
      {Key? key, required this.softText1, required this.softText2})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const TextWidget(
          text: "●",
          fheight: 1,
          fcolor: Colors.black,
          fweight: FontWeight.w600,
          fsize: 16,
        ),
        TextWidget(
          text: softText1,
          fheight: 1,
          fcolor: Colors.black,
          fweight: FontWeight.w600,
          fsize: 16,
        ),
        Flexible(
          child:  TextWidget(
              text: softText2,
              fheight: 1,
              fcolor: Colors.black,
              fweight: FontWeight.w400,
              fsize: 16,
            ),

        ),
      ],
    );
  }
}
