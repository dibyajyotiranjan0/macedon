import 'package:dio/dio.dart';

import '../../config/app-url.dart';
import '../../data/network/api_helper.dart';

class ProfileRepository {
  Future<dynamic> profileData({required userId}) async {
    late var response;

    try {
      FormData formData = FormData.fromMap({'user_id': userId});
      response = await NetworkApiService()
          .postApi(url: AppUrl.viewProfile, formData: formData);
    } catch (e) {
      throw Exception(e);
    }
    return response;
  }

  Future<dynamic> updateProfile(
      {required user_id,
      String? full_name,
      String? email,
      String? contactNumber,
      String? gender}) async {
    late var response;

    try {
      FormData formData = FormData.fromMap({
        'user_id': user_id,
        'full_name': full_name,
        'email': email,
        'contact_number': contactNumber,
        'gender': gender
      });
      response = await NetworkApiService()
          .postApi(url: AppUrl.updateProfile, formData: formData);
    } catch (e) {
      throw Exception(e);
    }
    return response;
  }
}
