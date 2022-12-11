import 'package:flutter/material.dart';
import 'package:portfolio_nerdbug/home/presentation/widget/soft_skill_section.dart';
import '../utilities/strings.dart';
import '../widget/soft_skill_row.dart';
import '../widget/text_widget.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Padding(
          padding: const EdgeInsets.only(top: 50, left: 30, right: 30),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: const [
              TextWidget(
                text: HomeScreenStrings.experienceHeader,
                fcolor: Colors.cyan,
                fweight: FontWeight.w600,
                fsize: 20,
              ),
              SizedBox(
                height: 10,
              ),
              TextWidget(
                text: HomeScreenStrings.experienceText,
                fcolor: Colors.black,
                fweight: FontWeight.w300,
                fsize: 16,
              ),
              SizedBox(
                height: 20,
              ),
              TextWidget(
                text: SoftSkillList.softSkillHeader,
                fcolor: Colors.cyan,
                fweight: FontWeight.w600,
                fsize: 20,
              ),
              SizedBox(
                height: 10,
              ),
             SoftSkillSection()
            ],
          ),
        ),
      ),
    );
  }
}
