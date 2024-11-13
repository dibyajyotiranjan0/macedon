import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:macedon/model/home/home_model.dart';
import 'package:macedon/repository/home/home_repository.dart';
import 'package:shared_preferences/shared_preferences.dart';

final homeProvider = StateNotifierProvider<CounterNotifier, HomeModel>(
  (ref) => CounterNotifier(),
);

class CounterNotifier extends StateNotifier<HomeModel> {
  CounterNotifier() : super(HomeModel());

  HomeModel? homeModel;

  Future homeViewmodel() async {
    // state = AsyncValue.loading();
    SharedPreferences preferences = await SharedPreferences.getInstance();
    String? userId = await preferences.getString('driverID');
    String? cityId = await preferences.getString('cityID');
    try {
      var res =
          await HomeRepository().homeRepository(userId: userId, cityId: cityId);
      if (res["status"] == 200) {
        homeModel = HomeModel.fromJson(res);
        state = homeModel ?? HomeModel();
      }
    } catch (e) {
      print("$e this the catch error");
      // state = AsyncValue.error(e, StackTrace.current);
    }
  }
}
