import 'package:flutter/material.dart';
import 'package:portfolio_nerdbug/home/presentation/utilities/strings.dart';

import 'text_widget.dart';

class EngineeringSummaryWidget extends StatelessWidget {

  const EngineeringSummaryWidget(
      {Key? key,})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Flexible(
          child:  TextWidget(
            text: EngineeringSummary.eng1,
            fheight: 1.2,
            fcolor: Colors.black,
            fweight: FontWeight.w400,
            fsize: 16,
          ),
        ),
        SizedBox(height: 10,),
        Flexible(
          child:  TextWidget(
            text: EngineeringSummary.eng2,
            fheight: 1.2,
            fcolor: Colors.black,
            fweight: FontWeight.w400,
            fsize: 16,
          ),

        ),
        SizedBox(height: 10,),
        Flexible(
          child:  TextWidget(
            text: EngineeringSummary.eng3,
            fheight: 1.2,
            fcolor: Colors.black,
            fweight: FontWeight.w400,
            fsize: 16,
          ),

        ),
        SizedBox(height: 10,),
        Flexible(
          child:  TextWidget(
            text: EngineeringSummary.eng4,
            fheight: 1.2,
            fcolor: Colors.black,
            fweight: FontWeight.w400,
            fsize: 16,
          ),
        ),
        SizedBox(height: 10,),
        Flexible(
          child:  TextWidget(
            text: EngineeringSummary.eng5,
            fheight: 1.2,
            fcolor: Colors.black,
            fweight: FontWeight.w400,
            fsize: 16,
          ),
        ),
        SizedBox(height: 10,),
        Flexible(
          child:  TextWidget(
            text: EngineeringSummary.eng6,
            fheight: 1.2,
            fcolor: Colors.black,
            fweight: FontWeight.w400,
            fsize: 16,
          ),
        ),


      ],
    );
  }
}