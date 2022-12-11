import 'package:flutter/material.dart';

import '../utilities/strings.dart';
import 'soft_skill_row.dart';

class SoftSkillSection extends StatelessWidget {
  const SoftSkillSection({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: const [
              SoftSkillRow(
                  softText1: SoftSkillList.language,
                  softText2: SoftSkillList.language2),
              SizedBox(
                height: 10,
              ),
              SoftSkillRow(
                  softText1: SoftSkillList.framework,
                  softText2: SoftSkillList.framework2),
              SizedBox(
                height: 10,
              ),
              SoftSkillRow(
                  softText1: SoftSkillList.state,
                  softText2: SoftSkillList.state2),
              SizedBox(
                height: 10,
              ),
              SoftSkillRow(
                  softText1: SoftSkillList.tools,
                  softText2: SoftSkillList.tools2),
              SizedBox(
                height: 10,
              ),
              SoftSkillRow(
                  softText1: SoftSkillList.analytics,
                  softText2: SoftSkillList.analytics2),
              SizedBox(
                height: 10,
              ),
              SoftSkillRow(
                  softText1: SoftSkillList.devops,
                  softText2: SoftSkillList.devops2),
              SizedBox(
                height: 10,
              ),
              SoftSkillRow(
                  softText1: SoftSkillList.concept,
                  softText2: SoftSkillList.concept2),
              SizedBox(
                height: 10,
              ),
              SoftSkillRow(
                  softText1: SoftSkillList.database,
                  softText2: SoftSkillList.database2),
            ],
          ),
        ),
      ],
    );
  }
}
