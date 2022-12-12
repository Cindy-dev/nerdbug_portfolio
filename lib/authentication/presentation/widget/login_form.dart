import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:portfolio_nerdbug/authentication/presentation/utilities/auth_strings.dart';
import 'package:portfolio_nerdbug/home/presentation/screens/home_screen.dart';
import 'package:portfolio_nerdbug/home/presentation/utilities/strings.dart';
import 'package:portfolio_nerdbug/utilities/colors.dart';
import '../../../app_controller/controllers/request_view_model.dart';
import '../../../utilities/navigators.dart';
import '../../logic/signin_vm.dart';
import '../screens/signup_screen.dart';
import '../utilities/dialog.dart';
import 'authenticationButton.dart';
import 'textform.dart';

class LoginForm extends StatefulHookConsumerWidget {
  const LoginForm({Key? key}) : super(key: key);

  @override
  ConsumerState<LoginForm> createState() => _LoginFormState();
}

class _LoginFormState extends ConsumerState<LoginForm> {
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  GlobalKey<FormState> formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    // final viewModel = ref.watch(loginViewModelNotifierProvider);
    return Expanded(
      child: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Padding(
          padding: const EdgeInsets.fromLTRB(24, 44, 24, 24),
          child: Form(
            key: formKey,
            child: Column(
              children: [
                TextForm(
                  hintText: LoginStrings.email,
                  prefixIcon:
                      const Icon(Icons.person, color: AppColors.hintTextColor),
                  controller: _emailController,
                  validator: (String? value) {
                    if (value!.isEmpty) {
                      return LoginStrings.eRequired;
                    }
                    if (!RegExp(
                           LoginStrings.regEmail )
                        .hasMatch(value)) {
                      return LoginStrings.emailVal;
                    } else {
                      return null;
                    }
                  },
                ),
                const SizedBox(
                  height: 24,
                ),
                TextForm(
                  hintText: LoginStrings.password,
                  prefixIcon: const Icon(
                    Icons.lock,
                    color: AppColors.hintTextColor,
                  ),
                  controller: _passwordController,
                  validator: (password) {
                    Pattern pattern =
                        LoginStrings.regPass;
                    RegExp regex = RegExp(pattern.toString());
                    if (!regex.hasMatch(password!)) {
                      return LoginStrings.passVal;
                    } else {
                      return null;
                    }
                  },
                ),
                const SizedBox(
                  height: 24,
                ),
                Consumer(builder: (context, ref, child) {
                  final result = ref.watch(loginViewModelNotifierProvider);
                  ref.listen<RequestState>(loginViewModelNotifierProvider,
                      (previous, state) {
                    
                    if (state is Success) {
                      navigatePush(context, const HomeScreen());
                    }else if (state is Error) {
                      final error = state.error.toString();
                      errorDialog(context, error, LoginStrings.eString);
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
                              .read(loginViewModelNotifierProvider.notifier)
                              .signIn(
                                _emailController.text,
                                _passwordController.text,
                              );
                        },
                        child: AuthButton(LoginStrings.login));
                  }
                }),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    const Text(
                      LoginStrings.dAccount,
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
                        navigatePush(context, const SignupScreen());
                      },
                      child: const Text(
                       LoginStrings.signUp,
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
