import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:portfolio_nerdbug/utilities/colors.dart';

import '../../../utilities/navigators.dart';
import '../screens/signup_screen.dart';
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
                  hintText: 'email',
                  prefixIcon:
                      const Icon(Icons.person, color: AppColors.hintTextColor),
                  controller: _emailController,
                  validator: (String? value) {
                    if (value!.isEmpty) {
                      return 'email is required';
                    }
                    if (!RegExp(
                            "^[a-zA-Z0-9.!#%&'*+/=?^_`{|}~-]+@[a-zA-Z0-9](?:[a-zA-Z0-9-]{0,253}[a-zA-Z0-9])?(?:.[a-zA-Z0-9](?:[a-zA-Z0-9-]{0,253}[a-zA-Z0-9])?)*")
                        .hasMatch(value)) {
                      return 'Please input a valid email address';
                    } else {
                      return null;
                    }
                  },
                ),
                const SizedBox(
                  height: 24,
                ),
                TextForm(
                  hintText: 'Password',
                  prefixIcon: const Icon(
                    Icons.lock,
                    color: AppColors.hintTextColor,
                  ),
                  controller: _passwordController,
                  validator: (password) {
                    Pattern pattern =
                        r'^(?=.*\d)(?=.*[a-z])(?=.*[A-Z])(?=.*[a-zA-Z]).{8,}$';
                    RegExp regex = RegExp(pattern.toString());
                    if (!regex.hasMatch(password!)) {
                      return 'Password should be 6 characters including\nlowercase and uppercase letters and at\nleast a symbol';
                    } else {
                      return null;
                    }
                  },
                ),
                const SizedBox(
                  height: 24,
                ),
                // Consumer(builder: (context, ref, child) {
                //   final result = ref.watch(loginViewModelNotifierProvider);
                //   ref.listen<RequestState>(loginViewModelNotifierProvider,
                //       (previous, state) {
                //     if (state is Success) {
                //       navigatePush(context, const SignupScreen());
                //     }
                //   });
                //   if (result is Loading) {
                //     return const CircularProgressIndicator(
                //       color: AppColors.bgColor,
                //     );
                //   } else {
                //     return GestureDetector(
                //         onTap: () {w
                //           if (!formKey.currentState!.validate()) {
                //             // Invalid!
                //             return;
                //           }
                //           ref
                //               .read(loginViewModelNotifierProvider.notifier)
                //               .signIn(
                //                 _emailController.text,
                //                 _passwordController.text,
                //               );
                //         },
                //         child: AuthButton('Login'));
                //   }
                // }),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    const Text(
                      'Don’t have an account?',
                      style: TextStyle(
                          color: AppColors.boldTextColor,
                          fontWeight: FontWeight.w500,
                          fontFamily: 'Poppins',
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
                        'Sign Up',
                        style: TextStyle(
                            color: AppColors.bgColor,
                            fontWeight: FontWeight.w500,
                            fontFamily: 'Poppins',
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
