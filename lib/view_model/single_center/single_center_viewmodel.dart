import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:macedon/model/allCity/allcity_mdel.dart';
import 'package:macedon/model/single_center/single_center_model.dart';
import 'package:macedon/repository/allcity/allcity_rrepository.dart';
import 'package:macedon/repository/single_center/single_center_repository.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../../model/single_service/single_service_page_modoel.dart';
import '../../repository/service_category/service_category_repository.dart';
import '../home/home_viewmodel.dart';

final singleCenterProvider =
    StateNotifierProvider<SingleServiceCEnter, SingleCenterModel>(
  (ref) => SingleServiceCEnter(),
);

class SingleServiceCEnter extends StateNotifier<SingleCenterModel> {
  SingleServiceCEnter() : super(SingleCenterModel());
  SingleCenterModel? singleCenterModel;
  Future CategoryViewmodel({required centerId}) async {
    try {
      var res = await SingleCenterRepository()
          .singleCenterService(centerId: centerId);
      if (res["status"] == 200) {
        singleCenterModel = SingleCenterModel.fromJson(res);
        // homeModel = HomeModel.fromJson(res);
        state = singleCenterModel ?? SingleCenterModel();
      }
    } catch (e) {
      print("$e this the catch error");
      // state = AsyncValue.error(e, StackTrace.current);
    }
  }
}
