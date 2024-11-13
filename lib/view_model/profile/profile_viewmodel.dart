import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:macedon/repository/profile/profile_repository.dart';
import 'package:macedon/static/flutter_toast_message/toast_messge.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../../model/profile/profile_modoel.dart';

final profileProvider =
    StateNotifierProvider<ProfileServiceViewmodel, ProfileModel>(
  (ref) => ProfileServiceViewmodel(),
);

class ProfileServiceViewmodel extends StateNotifier<ProfileModel> {
  ProfileServiceViewmodel() : super(ProfileModel());
  String? selectedGender;
  ProfileModel? profileModel;
  TextEditingController name = TextEditingController();
  TextEditingController email = TextEditingController();
  TextEditingController number = TextEditingController();
  Future profileData() async {
    // state = AsyncValue.loading();
    SharedPreferences preferences = await SharedPreferences.getInstance();
    String? userId = await preferences.getString('userID');
    try {
      var res = await ProfileRepository().profileData(userId: userId);

      if (res["status"] == 200) {
        profileModel = ProfileModel.fromJson(res);
        // print(profileModel!.toJson());
        name.text = profileModel?.messages?.status?.fullname ?? "";
        email.text = profileModel?.messages?.status?.email ?? "";
        number.text = profileModel?.messages?.status?.contact ?? "";
        // homeModel = HomeModel.fromJson(res);
        state = profileModel ?? ProfileModel();
      }
    } catch (e) {
      print("$e this the catch error");
      // state = AsyncValue.error(e, StackTrace.current);
    }
  }

  updateGender(String value) {
    selectedGender = value;
    state = state.copyWith(
      messages: state.messages?.copyWith(
        status: state.messages?.status?.copyWith(gender: value),
      ),
    );
    // state = state.copyWith(gender: value);
  }

  Future updateProfile() async {
    // state = AsyncValue.loading();
    SharedPreferences preferences = await SharedPreferences.getInstance();
    String? userId = await preferences.getString('userID');
    try {
      var res = await ProfileRepository().updateProfile(
          user_id: userId,
          full_name: name.text.toString(),
          email: email.text.toString(),
          contactNumber: number.text.toString());

      if (res["status"] == 200) {
        ShowToast(msg: "Update Sucessfully");
      }
    } catch (e) {
      print("$e this the catch error");
      // state = AsyncValue.error(e, StackTrace.current);
    }
  }
}
