import '../../config/app-url.dart';
import '../../data/network/api_helper.dart';

class AllserviceRepository {
  Future<dynamic> allService() async {
    late var response;

    try {
      response = await NetworkApiService().getApi(urll: AppUrl.allService);
    } catch (e) {
      throw Exception(e);
    }
    return response;
  }
}
