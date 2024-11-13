import 'package:dio/dio.dart';

import '../../config/app-url.dart';
import '../../data/network/api_helper.dart';

class HomeRepository {
  Future<dynamic> homeRepository(
      {required userId, required cityId, areaId}) async {
    late var response;

    try {
      FormData formData = FormData.fromMap(
          {'user_id': userId, 'city_id': cityId, 'area_id': areaId});
      response = await NetworkApiService()
          .postApi(url: AppUrl.userHome, formData: formData);

      // response = await loginOtpModel.fromJson(data);
    } catch (e) {
      throw Exception(e);
    }
    return response;
  }
}
