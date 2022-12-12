import 'dart:ffi';

import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../../app_controller/controllers/request_view_model.dart';
import '../../app_controller/manager/auth_manager.dart';
import '../data/repository/authentication.dart';

class LoginVMNotifier extends RequestStateNotifier<UserCredential> {
  final AuthDataManager _authDataManager;

  LoginVMNotifier(Ref ref)
      : _authDataManager = ref.read(authDataManagerProvider);

  void signIn(String email, String password) =>
      makeRequest(() => _authDataManager.signIn(email, password));

}

final loginViewModelNotifierProvider =
    StateNotifierProvider<LoginVMNotifier, RequestState<UserCredential>>(
        (ref) => LoginVMNotifier(ref));
