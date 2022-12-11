import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:portfolio_nerdbug/utilities/device_size.dart';

import '../../../utilities/colors.dart';
import '../../../utilities/navigators.dart';
import '../screens/login_screen.dart';
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
                    hintText: 'Full name',
                    prefixIcon: const Icon(Icons.person,
                        color: AppColors.hintTextColor),
                    controller: _nameController,
                    validator: (value) {
                      if (value!.isEmpty) {
                        return 'name is required';
                      } else {
                        return null;
                      }
                    }),
                SizedBox(
                  height: context.screenHeight() / 50,
                ),
                TextForm(
                    hintText: 'Email address',
                    prefixIcon: const Icon(Icons.email, color: AppColors.hintTextColor),
                    controller: _emailController,
                    validator: (value) {
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
                    }),
                SizedBox(
                  height: context.screenHeight() / 50,
                ),
                TextForm(
                   hintText: 'Phone number',
                 prefixIcon:   const Icon(Icons.phone, color: AppColors.hintTextColor),
                  controller:  _phoneController,
                     validator:    (value) {
                  if (value!.isEmpty) {
                    return 'phone number is required';
                  } else if (value.length < 11) {
                    return 'Please input a valid phone number';
                  } else {
                    return null;
                  }
                }),
                SizedBox(
                  height: context.screenHeight() / 50,
                ),

                TextForm(
                  hintText: 'Password',
                 prefixIcon: const Icon(Icons.lock, color: AppColors.hintTextColor),
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
                SizedBox(
                  height: context.screenHeight() / 30,
                ),
                // Consumer(builder: (context, WidgetRef ref, child) {
                //   final result = ref.watch(signupViewModelNotifierProvider);
                //   ref.listen<RequestState>(signupViewModelNotifierProvider,
                //       (previous, state) {
                //     if (state is Success) {
                //       navigatePush(context, const LoginScreen());
                //     }
                //   });
                //   if (result is Loading) {
                //     return const CircularProgressIndicator(
                //       color: orangeColor,
                //     );
                //   } else {
                //     return GestureDetector(
                //         onTap: () {
                //           if (!formKey.currentState!.validate()) {
                //             // Invalid!
                //             return;
                //           }
                //           ref
                //               .read(signupViewModelNotifierProvider.notifier)
                //               .signUp(
                //                   _emailController.text,
                //                   _passwordController.text,
                //                   _phoneController.text,
                //                   _nameController.text);
                //         },
                //         child: AuthenticationButton('Sign Up'));
                //   }
                // }),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Text(
                      'Already have an account?',
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
                        navigatePush(context, const LoginScreen());
                      },
                      child: const Text(
                        'Log In',
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
