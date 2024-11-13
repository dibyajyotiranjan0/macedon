import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:macedon/model/userdata_model/user_data_model.dart';
import 'package:macedon/repository/auth/login_repositry.dart';
import 'package:macedon/screen/auth/otp_verify_screen.dart';
import 'package:macedon/static/flutter_toast_message/toast_messge.dart';
import 'package:macedon/view_model/manege_state/manege_api_response_state.dart';
import 'package:shared_preferences/shared_preferences.dart';
import '../../model/login/login_model.dart';
import '../../router/navigator_router.dart';
import '../../screen/bottom_navigation/navigation.dart';

// Define your provider
final loginProvider = StateNotifierProvider<LoginNotifier, AuthState>(
  (ref) => LoginNotifier(),
);

// Define the AuthState class
class AuthState {
  final bool isLoading;
  final LoginModel? model;
  final String? errorMessage;

  AuthState({
    required this.isLoading,
    this.model,
    this.errorMessage,
  });
}

// Your LoginNotifier class should extend StateNotifier<AuthState>
class LoginNotifier extends StateNotifier<AuthState> {
  LoginNotifier() : super(AuthState(isLoading: false));
  final TextEditingController name = TextEditingController();
  final TextEditingController mobNumber = TextEditingController();
  final TextEditingController otpNumber = TextEditingController();
  LoginModel? loginModel;
  UserdataModel? userdataModel;

  // Submit login function
  Future<LoginModel?> submitLogin(BuildContext context) async {
    state = AuthState(isLoading: true); // Set loading state to true

    if (mobNumber.text.length != 10) {
      ShowToast(msg: "Invalid Phone Number");
      state = AuthState(
          isLoading: false,
          errorMessage: "Invalid Phone Number"); // Set error message
    } else {
      try {
        var res = await AuthApiRepository()
            .loginRepository(contact: mobNumber.text.toString());

        if (res["status"] == 200) {
          loginModel = await LoginModel.fromJson(res);
          print(loginModel);
          state = AuthState(
              isLoading: false, model: loginModel); // Set state with data
          // navigation(context, OtpVerifyScreen()); // Navigate to OTP screen
          context.push("/otpVerify");
        } else {
          state = AuthState(
              isLoading: false,
              errorMessage: "Login failed"); // Handle non-success response
        }
      } catch (e) {
        state = AuthState(
            isLoading: false, errorMessage: e.toString()); // Handle errors
      }
    }
    return loginModel;
  }

  // Verify OTP function
  Future<void> verifyOtp(BuildContext context) async {
    // ShowToast(msg: state.model!.messages!.status!.login_otp.toString());
    //state.model!.messages!.status!.login_otp.toString()
    if (state.model!.messages!.status!.login_otp.toString() ==
        otpNumber.text.toString()) {
      state = AuthState(isLoading: true, model: state.model);
      try {
        var phone =
            await state.model!.messages!.status!.contact_otp!.toString();
        var res = await AuthApiRepository().verifyOtp(phoneNo: phone);

        // print(state.model!.messages!.status!.contact_otp!.toString());

        if (res["status"] == 200) {
          userdataModel = UserdataModel.fromJson(res);
          SharedPreferences preferences = await SharedPreferences.getInstance();
          await preferences.setString(
              'userID', await userdataModel!.messages!.status!.user_id!);

          // navigationReplace(
          //     context, BottomNavigation()); // Navigate to the main screen
          context.pushReplacement("/home", extra: {'id': "0"});
          state = AuthState(
              isLoading: false,
              model: state.model); // Set loading state to false
          print(userdataModel!.toJson());
        } else {
          state = AuthState(
              isLoading: false,
              errorMessage: "OTP Verification failed",
              model: state.model); // Handle non-success response
        }
      } catch (e) {
        state = AuthState(
            isLoading: false,
            errorMessage: "error",
            model: state.model); // Handle errors
      }
    } else {
      ShowToast(msg: "Incorrect OTP${otpNumber.text.toString()}");
      state = AuthState(
          isLoading: false, errorMessage: "Incorrect OTP", model: state.model);
    }
    state = AuthState(isLoading: false, model: state.model);
  }

  // Handle OTP change
  void otpChange(String value) {
    otpNumber.text = value;
  }

  // Logout function
  Future<void> logout(BuildContext context) async {
    SharedPreferences preferences = await SharedPreferences.getInstance();
    await preferences.remove('driverID');
    // Add your logout logic here
  }
}
