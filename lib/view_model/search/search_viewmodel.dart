import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:macedon/model/allCity/allcity_mdel.dart';
import 'package:macedon/model/allService/allservice_model.dart';
import 'package:macedon/model/home/home_model.dart';
import 'package:macedon/repository/allcity/allcity_rrepository.dart';
import 'package:macedon/repository/allcity/allservice_repository.dart';
import 'package:macedon/view_model/search/searchupdate_model.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../../model/search/search_data_model.dart';
import '../home/home_viewmodel.dart';

final searchProvider =
    StateNotifierProvider<SearchViewModel, SearchModelUpdate>(
  (ref) => SearchViewModel(),
);

class SearchViewModel extends StateNotifier<SearchModelUpdate> {
  SearchViewModel()
      : super(
            SearchModelUpdate(loading: false, searchM: null, searchCity: null));

  AllCityModel? allCityModel;
  // Datum? selectCity;
  AllServiceModel? serviceModel;
  ServieDatum? searchService;
  SearchModel? searchModel;
  Datum? searchSelectcity;
  Area? searchSelectArea;

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

  updateSearchService(ServieDatum? service) async {
    searchService = service;
  }

  updateSearchCity(Datum? city) async {
    searchSelectcity = city;
    state = SearchModelUpdate(loading: false, searchCity: searchSelectcity) ??
        SearchModelUpdate();

    // state = searchSelectcity ?? Datum();
  }

  updateSearchArea(Area? area) async {
    searchSelectArea = area;
    // state = SearchModelUpdate(loading: false, searchCity: state.searchCity) ??
    //     SearchModelUpdate();
  }

  search() async {
    // print(searchService);
    // print(searchSelectcity);
    // print(searchSelectArea);
    try {
      var res = await AllcityRepository().searchService(
          serviceId: searchService!.service_master_id,
          cityId: searchSelectcity!.city_id,
          areaId: searchSelectArea!.area_id);

      searchModel = SearchModel.fromJson(res);
      state = await SearchModelUpdate(
              loading: false,
              searchCity: state.searchCity,
              searchM: searchModel) ??
          SearchModelUpdate();
      print(searchModel);
    } catch (e) {
      print("$e this the catch error");
      // state = AsyncValue.error(e, StackTrace.current);
    }
  }

  @override
  void dispose() {
    clearResults(); // Clear results on dispose
    super.dispose();
  }

  void clearResults() {
    state = SearchModelUpdate(
        loading: false,
        searchCity: null,
        searchM: null); // Reset to initial state
  }
}
