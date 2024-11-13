import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:macedon/repository/membership/macedon_membership.dart';
import 'package:macedon/repository/offer/offer_repository.dart';
import '../../model/offer/offer_model.dart';

final offerProvider = StateNotifierProvider<OfferViewmodel, OfferModel>(
  (ref) => OfferViewmodel(),
);

class OfferViewmodel extends StateNotifier<OfferModel> {
  OfferViewmodel() : super(OfferModel());
  OfferModel? offerModel;
  Future macedonOffer() async {
    try {
      var res = await OfferRepository().macedonOffer();

      if (res["status"] == 200) {
        offerModel = OfferModel.fromJson(res);

        state = offerModel ?? OfferModel();
      }
    } catch (e) {
      print("$e this the catch error");
      // state = AsyncValue.error(e, StackTrace.current);
    }
  }
}
