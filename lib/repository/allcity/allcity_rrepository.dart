import 'package:dio/dio.dart';

import '../../config/app-url.dart';
import '../../data/network/api_helper.dart';

class AllcityRepository {
  Future<dynamic> allCity() async {
    late var response;

    try {
      response = await NetworkApiService().getApi(urll: AppUrl.selectCity);
    } catch (e) {
      throw Exception(e);
    }
    return response;
  }

  Future searchService({required serviceId, cityId, areaId}) async {
    late var response;

    try {
      FormData formData = FormData.fromMap(
          {'service_id': serviceId, 'city_id': cityId, 'area_id': areaId});
      response = await NetworkApiService()
          .postApi(url: AppUrl.filter, formData: formData);

      // response = await VerifyOtpHomeModel.fromJson(data);
    } catch (e) {
      throw Exception(e);
    }

    return response;
  }
}
