import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:portfolio_nerdbug/authentication/data/repository/authentication.dart';
import 'package:portfolio_nerdbug/home/presentation/widget/eng_sum_.dart';
import 'package:portfolio_nerdbug/home/presentation/widget/prof_exp.dart';
import 'package:portfolio_nerdbug/home/presentation/widget/soft_skill_section.dart';
import 'package:portfolio_nerdbug/utilities/colors.dart';
import '../utilities/strings.dart';
import '../widget/text_widget.dart';

class HomeScreen extends StatefulHookConsumerWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  ConsumerState<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends ConsumerState<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppColors.bgColor,
        leading: Container(),
        title: const TextWidget(
          text: 'My CV',
        ),
        actions: [
          IconButton(
              onPressed: () {
                ref.read(authServicesProvider).signOut(context);
              },
              icon: const Icon(Icons.logout))
        ],
      ),
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
              SoftSkillSection(),
              SizedBox(
                height: 10,
              ),
              TextWidget(
                text: EngineeringSummary.engineeringSummaryHeader,
                fcolor: Colors.cyan,
                fweight: FontWeight.w600,
                fsize: 20,
              ),
              EngineeringSummaryWidget(),
              SizedBox(
                height: 10,
              ),
              TextWidget(
                text: ProfessionalExperience.profExpHeader,
                fcolor: Colors.cyan,
                fweight: FontWeight.w600,
                fsize: 20,
              ),
              SizedBox(
                height: 10,
              ),
              ProfessionalExperienceWidget(),
              SizedBox(
                height: 50,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
