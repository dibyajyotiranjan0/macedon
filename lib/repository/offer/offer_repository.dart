import 'package:dio/dio.dart';

import '../../config/app-url.dart';
import '../../data/network/api_helper.dart';

class OfferRepository {
  Future<dynamic> macedonOffer() async {
    late var response;

    try {
      response = await NetworkApiService().getApi(urll: AppUrl.offer);
    } catch (e) {
      throw Exception(e);
    }
    return response;
  }
}
