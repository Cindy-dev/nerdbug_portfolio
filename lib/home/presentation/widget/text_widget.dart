import 'package:flutter/material.dart';

import '../utilities/strings.dart';

class TextWidget extends StatelessWidget {
  final String text;
  final double? fsize;
  final FontWeight? fweight;
  final Color? fcolor;
  final double? fheight;
  const TextWidget(
      {Key? key,
      required this.text,
      this.fsize,
      this.fweight,
      this.fcolor,
      this.fheight})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(
          height: fheight,
          fontFamily: FontStrings.fontName,
          fontSize: fsize,
          fontWeight: fweight,
          color: fcolor),
    );
  }
}
