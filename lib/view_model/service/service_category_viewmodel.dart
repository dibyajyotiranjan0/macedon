import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:macedon/model/allCity/allcity_mdel.dart';
import 'package:macedon/repository/allcity/allcity_rrepository.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../../model/single_service/single_service_page_modoel.dart';
import '../../repository/service_category/service_category_repository.dart';
import '../home/home_viewmodel.dart';

final serviceProvider =
    StateNotifierProvider<ServiceCategoryViewmodel, SingleServicePageModel>(
  (ref) => ServiceCategoryViewmodel(),
);

class ServiceCategoryViewmodel extends StateNotifier<SingleServicePageModel> {
  ServiceCategoryViewmodel() : super(SingleServicePageModel());
  SingleServicePageModel? serviceModel;
  Future CategoryViewmodel() async {
    // state = AsyncValue.loading();
    SharedPreferences preferences = await SharedPreferences.getInstance();
    String? userId = await preferences.getString('driverID');
    String? cityId = await preferences.getString('cityID');
    try {
      var res = await ServiceRepository()
          .serviceCategoryProduct(cityId: "23", serviceID: "4");
      if (res["status"] == 200) {
        serviceModel = SingleServicePageModel.fromJson(res);
        // homeModel = HomeModel.fromJson(res);
        state = serviceModel ?? SingleServicePageModel();
      }
    } catch (e) {
      print("$e this the catch error");
      // state = AsyncValue.error(e, StackTrace.current);
    }
  }
}
