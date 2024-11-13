import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:macedon/model/allCity/allcity_mdel.dart';
import 'package:macedon/model/allService/allservice_model.dart';
import 'package:macedon/model/home/home_model.dart';
import 'package:macedon/repository/allcity/allcity_rrepository.dart';
import 'package:macedon/repository/allcity/allservice_repository.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../home/home_viewmodel.dart';

final cityProvider = StateNotifierProvider<AllcityViewmodel, Datum>(
  (ref) => AllcityViewmodel(),
);

class AllcityViewmodel extends StateNotifier<Datum> {
  AllcityViewmodel() : super(Datum());

  AllCityModel? allCityModel;
  Datum? selectCity;
  AllServiceModel? serviceModel;
  //SEarch page
  Datum? searchSelectcity;
  Area? searchSelectArea;
  ServieDatum? searchService;

  Future allCity() async {
    // state = AsyncValue.loading();
    try {
      var res = await AllcityRepository().allCity();
      if (res["status"] == 200) {
        allCityModel = AllCityModel.fromJson(res);
        // state = AsyncValue.data(allCityModel);
      }
    } catch (e) {
      print("$e this the catch error");
      // state = AsyncValue.error(e, StackTrace.current);
    }
  }

  Future allService() async {
    // state = AsyncValue.loading();
    try {
      var res = await AllserviceRepository().allService();
      if (res["status"] == 200) {
        // allCityModel = AllCityModel.fromJson(res);
        // state = AsyncValue.data(allCityModel);
        serviceModel = AllServiceModel.fromJson(res);
      }
    } catch (e) {
      print("$e this the catch error");
      // state = AsyncValue.error(e, StackTrace.current);
    }
  }

  updateSearchCity(Datum? city) async {
    searchSelectcity = city;
    state = searchSelectcity ?? Datum();
  }

  updateSearchArea(Area? area) async {
    searchSelectArea = area;
  }

  updateSearchService(ServieDatum? service) async {
    searchService = service;
  }

  Search() async {
    // print(searchService);
    // print(searchSelectcity);
    // print(searchSelectArea);
    // try {
    var res = await AllcityRepository().searchService(
        serviceId: searchService!.service_master_id,
        cityId: searchSelectcity!.city_id,
        areaId: searchSelectArea!.area_id);
    print(res);
    //   if (res["status"] == 200) {
    // profileModel = ProfileModel.fromJson(res);
    // // print(profileModel!.toJson());
    // name.text = profileModel?.messages?.status?.fullname ?? "";
    // email.text = profileModel?.messages?.status?.email ?? "";
    // number.text = profileModel?.messages?.status?.contact ?? "";
    // // homeModel = HomeModel.fromJson(res);
    // state = profileModel ?? ProfileModel();
    //   }
    // } catch (e) {
    //   print("$e this the catch error");
    //   // state = AsyncValue.error(e, StackTrace.current);
    // }
  }

  updateCity(Datum? city) async {
    selectCity = city;
    SharedPreferences preferences = await SharedPreferences.getInstance();
    await preferences.setString('cityId', selectCity?.city_id ?? "");
    await ProviderContainer().read(homeProvider.notifier).homeViewmodel();
    state = selectCity ?? Datum();
  }
}
