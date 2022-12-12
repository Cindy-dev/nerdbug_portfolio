import 'dart:ui';

import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:portfolio_nerdbug/authentication/presentation/screens/login_screen.dart';
import 'package:portfolio_nerdbug/utilities/navigators.dart';
import '../model/user.dart';

class AuthenticationServices {
  final auth = FirebaseAuth.instance;

  //Method called to create user with email and password
  Future<AppUser> signUP(String email, String password, String phoneNumber,
      String fullName) async {
    try {
      final newUser = await FirebaseAuth.instance
          .createUserWithEmailAndPassword(email: email, password: password);
      if (newUser.user != null) {
        var user = AppUser(
            id: newUser.user!.uid,
            email: email,
            fullName: fullName,
            phoneNumber: phoneNumber);
        final authUser = newUser.user;
        await authUser?.updateDisplayName(fullName);
        // onSuccess.call();
        return user;
      } else {
        throw Exception();
      }
    } catch (error) {
      print(error.toString());
      throw error;
    }
  }

  //login method
  Future<UserCredential> signIn(String email, String password) async {
    try {
      final result = await auth.signInWithEmailAndPassword(
          email: email, password: password);
      print(result);

      if (result.user != null) {
        var user = AppUser(
            id: result.user!.uid,
            email: result.user!.email.toString(),
            fullName: result.user!.displayName.toString(),
            phoneNumber: result.user!.phoneNumber.toString());
        //onSuccess.call();

        return result;
      } else {
        throw Exception();
      }
      //The password is invalid or the user does not have a password.
    } catch (error) {
      print(error.toString());
      throw error;
    }
  }

  //logout method
  Future<void> signOut(BuildContext context) async {
    try {
      await auth.signOut();
      navigatePush(context, LoginScreen());
    } on FirebaseException catch (error) {
      print(error);
    }
  }
}

//initializing a provider to make our auth functions accessible in the different statea
final authServicesProvider = Provider((ref) => AuthenticationServices());
