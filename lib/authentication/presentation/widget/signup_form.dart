import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:portfolio_nerdbug/authentication/presentation/utilities/auth_strings.dart';
import 'package:portfolio_nerdbug/home/presentation/utilities/strings.dart';
import 'package:portfolio_nerdbug/utilities/device_size.dart';
import '../../../app_controller/controllers/request_view_model.dart';
import '../../../utilities/colors.dart';
import '../../../utilities/navigators.dart';
import '../../logic/signup_vm.dart';
import '../screens/login_screen.dart';
import '../utilities/dialog.dart';
import 'authenticationButton.dart';
import 'textform.dart';

class SignupForm extends StatefulHookConsumerWidget {
  const SignupForm({Key? key}) : super(key: key);

  @override
  ConsumerState<SignupForm> createState() => _SignupFormState();
}

class _SignupFormState extends ConsumerState<SignupForm> {
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  final TextEditingController _phoneController = TextEditingController();
  final TextEditingController _nameController = TextEditingController();
  GlobalKey<FormState> formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Padding(
          padding: EdgeInsets.fromLTRB(24, context.screenHeight() / 26, 24, 24),
          child: Form(
            key: formKey,
            child: Column(
              children: [
                TextForm(
                    hintText: SignupStrings.fName,
                    prefixIcon: const Icon(Icons.person,
                        color: AppColors.hintTextColor),
                    controller: _nameController,
                    validator: (value) {
                      if (value!.isEmpty) {
                        return SignupStrings.nameVal;
                      } else {
                        return null;
                      }
                    }),
                SizedBox(
                  height: context.screenHeight() / 50,
                ),
                TextForm(
                    hintText: SignupStrings.email,
                    prefixIcon:
                        const Icon(Icons.email, color: AppColors.hintTextColor),
                    controller: _emailController,
                    validator: (value) {
                      if (value!.isEmpty) {
                        return SignupStrings.eRequired;
                      }
                      if (!RegExp(SignupStrings.regEmail).hasMatch(value)) {
                        return SignupStrings.emailVal;
                      } else {
                        return null;
                      }
                    }),
                SizedBox(
                  height: context.screenHeight() / 50,
                ),
                TextForm(
                    hintText: SignupStrings.pNumber,
                    prefixIcon:
                        const Icon(Icons.phone, color: AppColors.hintTextColor),
                    controller: _phoneController,
                    validator: (value) {
                      if (value!.isEmpty) {
                        return SignupStrings.pRequired;
                      } else if (value.length < 11) {
                        return SignupStrings.pVal;
                      } else {
                        return null;
                      }
                    }),
                SizedBox(
                  height: context.screenHeight() / 50,
                ),
                TextForm(
                  hintText: SignupStrings.pass,
                  prefixIcon:
                      const Icon(Icons.lock, color: AppColors.hintTextColor),
                  controller: _passwordController,
                  validator: (password) {
                    Pattern pattern = SignupStrings.passReg;
                    RegExp regex = RegExp(pattern.toString());
                    if (!regex.hasMatch(password!)) {
                      return SignupStrings.passVal;
                    } else {
                      return null;
                    }
                  },
                ),
                SizedBox(
                  height: context.screenHeight() / 30,
                ),
                Consumer(builder: (context, WidgetRef ref, child) {
                  final result = ref.watch(signupViewModelNotifierProvider);
                  ref.listen<RequestState>(signupViewModelNotifierProvider,
                      (previous, state) {
                    if (state is Success) {
                      navigatePush(context, const LoginScreen());
                    } else if (state is Error) {
                      final error = state.error.toString();
                      errorDialog(context, error, SignupStrings.eString);
                    }
                  });
                  if (result is Loading) {
                    return const CircularProgressIndicator(
                      color: AppColors.bgColor,
                    );
                  } else {
                    return GestureDetector(
                        onTap: () {
                          if (!formKey.currentState!.validate()) {
                            // Invalid!
                            return;
                          }
                          ref
                              .read(signupViewModelNotifierProvider.notifier)
                              .signUp(
                                  _emailController.text,
                                  _passwordController.text,
                                  _phoneController.text,
                                  _nameController.text);
                        },
                        child: AuthButton(SignupStrings.signup));
                  }
                }),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Text(
                      SignupStrings.acct,
                      style: TextStyle(
                          color: AppColors.boldTextColor,
                          fontWeight: FontWeight.w500,
                          fontFamily: FontStrings.fontName,
                          fontSize: 14),
                    ),
                    const SizedBox(
                      width: 5,
                    ),
                    GestureDetector(
                      onTap: () {
                        navigatePush(context, const LoginScreen());
                      },
                      child: const Text(
                        SignupStrings.login,
                        style: TextStyle(
                            color: AppColors.bgColor,
                            fontWeight: FontWeight.w500,
                            fontFamily: FontStrings.fontName,
                            fontSize: 14),
                      ),
                    )
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
