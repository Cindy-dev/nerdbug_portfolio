import 'package:flutter/material.dart';
import 'package:portfolio_nerdbug/home/presentation/utilities/strings.dart';

import 'text_widget.dart';

class ProfessionalExperienceWidget extends StatelessWidget {
  const ProfessionalExperienceWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisSize: MainAxisSize.min,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: const [
                 TextWidget(
                  text: ProfessionalExperience.ccnRole,
                  fheight: 1,
                  fcolor: Colors.black,
                  fweight: FontWeight.w600,
                  fsize: 14,
                ),
                SizedBox(width: 10,),
                Flexible(
                  child: TextWidget(
                    text: ProfessionalExperience.ccnDate,
                    fheight: 1,
                    fcolor: Colors.black,
                    fweight: FontWeight.w400,
                    fsize: 14,
                  ),
                ),
              ],
            ),
            const SizedBox(height: 10,),
            const Flexible(
              child: TextWidget(
                text: ProfessionalExperience.ccn1,
                fheight: 1.2,
                fcolor: Colors.black,
                fweight: FontWeight.w400,
                fsize: 14,
              ),
            ),
            const SizedBox(height: 10,),
            const Flexible(
              child: TextWidget(
                text: ProfessionalExperience.ccn2,
                fheight: 1.2,
                fcolor: Colors.black,
                fweight: FontWeight.w400,
                fsize: 14,
              ),
            ),
          ],
        ),
        const SizedBox(height: 20,),
        Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisSize: MainAxisSize.min,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: const [
                TextWidget(
                  text: ProfessionalExperience.bbayRole,
                  fheight: 1,
                  fcolor: Colors.black,
                  fweight: FontWeight.w600,
                  fsize: 14,
                ),
                SizedBox(width: 10,),
                Flexible(
                  child: TextWidget(
                    text: ProfessionalExperience.bbayDate,
                    fheight: 1,
                    fcolor: Colors.black,
                    fweight: FontWeight.w400,
                    fsize: 14,
                  ),
                ),
              ],
            ),
            const SizedBox(height: 10,),
            const Flexible(
              child: TextWidget(
                text: ProfessionalExperience.bbay1,
                fheight: 1.2,
                fcolor: Colors.black,
                fweight: FontWeight.w400,
                fsize: 14,
              ),
            ),
            const SizedBox(height: 10,),
            const Flexible(
              child: TextWidget(
                text: ProfessionalExperience.bbay2,
                fheight: 1.2,
                fcolor: Colors.black,
                fweight: FontWeight.w400,
                fsize: 14,
              ),
            ),
            const SizedBox(height: 10,),
            const Flexible(
              child: TextWidget(
                text: ProfessionalExperience.bbay3,
                fheight: 1.2,
                fcolor: Colors.black,
                fweight: FontWeight.w400,
                fsize: 14,
              ),
            ),
            const SizedBox(height: 10,),
            const Flexible(
              child: TextWidget(
                text: ProfessionalExperience.bbay4,
                fheight: 1.2,
                fcolor: Colors.black,
                fweight: FontWeight.w400,
                fsize: 14,
              ),
            ),
            const SizedBox(height: 10,),
            const Flexible(
              child: TextWidget(
                text: ProfessionalExperience.bbay5,
                fheight: 1.2,
                fcolor: Colors.black,
                fweight: FontWeight.w400,
                fsize: 14,
              ),
            ),
          ],
        ),
        const SizedBox(height: 20,),
        Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisSize: MainAxisSize.min,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: const [
                TextWidget(
                  text: ProfessionalExperience.fmartRole,
                  fheight: 1,
                  fcolor: Colors.black,
                  fweight: FontWeight.w600,
                  fsize: 14,
                ),
                SizedBox(width: 10,),
                Flexible(
                  child: TextWidget(
                    text: ProfessionalExperience.fmartDate,
                    fheight: 1,
                    fcolor: Colors.black,
                    fweight: FontWeight.w400,
                    fsize: 14,
                  ),
                ),
              ],
            ),
            const SizedBox(height: 10,),
            const Flexible(
              child: TextWidget(
                text: ProfessionalExperience.fmart1,
                fheight: 1.2,
                fcolor: Colors.black,
                fweight: FontWeight.w400,
                fsize: 14,
              ),
            ),
            const SizedBox(height: 10,),
            const Flexible(
              child: TextWidget(
                text: ProfessionalExperience.fmart2,
                fheight: 1.2,
                fcolor: Colors.black,
                fweight: FontWeight.w400,
                fsize: 14,
              ),
            ),
            const SizedBox(height: 10,),
            const Flexible(
              child: TextWidget(
                text: ProfessionalExperience.fmart3,
                fheight: 1.2,
                fcolor: Colors.black,
                fweight: FontWeight.w400,
                fsize: 14,
              ),
            ),
            const SizedBox(height: 10,),
            const Flexible(
              child: TextWidget(
                text: ProfessionalExperience.fmart4,
                fheight: 1.2,
                fcolor: Colors.black,
                fweight: FontWeight.w400,
                fsize: 14,
              ),
            ),
            const SizedBox(height: 10,),
            const Flexible(
              child: TextWidget(
                text: ProfessionalExperience.fmart5,
                fheight: 1.2,
                fcolor: Colors.black,
                fweight: FontWeight.w400,
                fsize: 14,
              ),
            ),
          ],
        ),
        const SizedBox(height: 20,),
        Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisSize: MainAxisSize.min,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: const [
                TextWidget(
                  text: ProfessionalExperience.nTaxi,
                  fheight: 1,
                  fcolor: Colors.black,
                  fweight: FontWeight.w600,
                  fsize: 14,
                ),
                SizedBox(width: 10,),
                Flexible(
                  child: TextWidget(
                    text: ProfessionalExperience.nTaxiDate,
                    fheight: 1,
                    fcolor: Colors.black,
                    fweight: FontWeight.w400,
                    fsize: 14,
                  ),
                ),
              ],
            ),
            const SizedBox(height: 10,),
            const Flexible(
              child: TextWidget(
                text: ProfessionalExperience.nTaxi1,
                fheight: 1.2,
                fcolor: Colors.black,
                fweight: FontWeight.w400,
                fsize: 14,
              ),
            ),
            const SizedBox(height: 10,),
            const Flexible(
              child: TextWidget(
                text: ProfessionalExperience.nTaxi2,
                fheight: 1.2,
                fcolor: Colors.black,
                fweight: FontWeight.w400,
                fsize: 14,
              ),
            ),
            const SizedBox(height: 10,),
            const Flexible(
              child: TextWidget(
                text: ProfessionalExperience.nTaxi3,
                fheight: 1.2,
                fcolor: Colors.black,
                fweight: FontWeight.w400,
                fsize: 14,
              ),
            ),
            const SizedBox(height: 10,),
            const Flexible(
              child: TextWidget(
                text: ProfessionalExperience.nTaxi4,
                fheight: 1.2,
                fcolor: Colors.black,
                fweight: FontWeight.w400,
                fsize: 14,
              ),
            ),
          ],
        ),
        const SizedBox(height: 20,),
        Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisSize: MainAxisSize.min,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: const [
                TextWidget(
                  text: ProfessionalExperience.zuri,
                  fheight: 1,
                  fcolor: Colors.black,
                  fweight: FontWeight.w600,
                  fsize: 14,
                ),
                SizedBox(width: 10,),
                Flexible(
                  child: TextWidget(
                    text: ProfessionalExperience.zuriDate,
                    fheight: 1,
                    fcolor: Colors.black,
                    fweight: FontWeight.w400,
                    fsize: 14,
                  ),
                ),
              ],
            ),
            const SizedBox(height: 10,),
            const Flexible(
              child: TextWidget(
                text: ProfessionalExperience.zuri1,
                fheight: 1.2,
                fcolor: Colors.black,
                fweight: FontWeight.w400,
                fsize: 14,
              ),
            ),
            const SizedBox(height: 10,),
            const Flexible(
              child: TextWidget(
                text: ProfessionalExperience.zuri2,
                fheight: 1.2,
                fcolor: Colors.black,
                fweight: FontWeight.w400,
                fsize: 14,
              ),
            ),
    ]),
        const SizedBox(height: 20,),
        Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisSize: MainAxisSize.min,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: const [
                TextWidget(
                  text: ProfessionalExperience.free,
                  fheight: 1,
                  fcolor: Colors.black,
                  fweight: FontWeight.w600,
                  fsize: 14,
                ),
                SizedBox(width: 10,),
                Flexible(
                  child: TextWidget(
                    text: ProfessionalExperience.freeDate,
                    fheight: 1,
                    fcolor: Colors.black,
                    fweight: FontWeight.w400,
                    fsize: 14,
                  ),
                ),
              ],
            ),
            const SizedBox(height: 10,),
            const Flexible(
              child: TextWidget(
                text: ProfessionalExperience.free1,
                fheight: 1.2,
                fcolor: Colors.black,
                fweight: FontWeight.w400,
                fsize: 14,
              ),
            ),
          ],
        ),
      ],
    );
  }
}
