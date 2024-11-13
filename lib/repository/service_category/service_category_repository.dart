import 'package:dio/dio.dart';

import '../../config/app-url.dart';
import '../../data/network/api_helper.dart';

class ServiceRepository {
  Future<dynamic> serviceCategoryProduct(
      {required cityId, required serviceID}) async {
    late var response;

    try {
      FormData formData =
          FormData.fromMap({'city_id': cityId, 'service_id': serviceID});
      response = await NetworkApiService()
          .postApi(url: AppUrl.serviceCategory, formData: formData);
    } catch (e) {
      throw Exception(e);
    }
    return response;
  }
}
