import 'package:dio/dio.dart';

import '../../config/app-url.dart';
import '../../data/network/api_helper.dart';

class SingleCenterRepository {
  Future<dynamic> singleCenterService({required centerId}) async {
    late var response;

    try {
      FormData formData = FormData.fromMap({'center_id': centerId});
      response = await NetworkApiService()
          .postApi(url: AppUrl.singleServiceCenter, formData: formData);
    } catch (e) {
      throw Exception(e);
    }
    return response;
  }
}
