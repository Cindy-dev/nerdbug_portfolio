import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../../app_controller/controllers/request_view_model.dart';
import '../../app_controller/manager/auth_manager.dart';
import '../data/model/user.dart';

class SignupVMNotifier extends RequestStateNotifier<AppUser> {
  final AuthDataManager _authDataManager;

  SignupVMNotifier(Ref ref)
      : _authDataManager = ref.read(authDataManagerProvider);

  void signUp(
          String email, String password, String phoneNumber, String fullName) =>
      makeRequest(() =>
          _authDataManager.signUP(email, password, phoneNumber, fullName));
}

final signupViewModelNotifierProvider =
    StateNotifierProvider<SignupVMNotifier, RequestState<AppUser>>(
        (ref) => SignupVMNotifier(ref));
