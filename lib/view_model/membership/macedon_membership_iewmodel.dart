import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:macedon/repository/membership/macedon_membership.dart';

import '../../model/macedon_membership/macedon_membership_model.dart';

final membershipProvider =
    StateNotifierProvider<MacedonmembershipViewmodel, MacedonMemebershipModel>(
  (ref) => MacedonmembershipViewmodel(),
);

class MacedonmembershipViewmodel
    extends StateNotifier<MacedonMemebershipModel> {
  MacedonmembershipViewmodel() : super(MacedonMemebershipModel());
  MacedonMemebershipModel? macedonMemebershipModel;
  Future macedonMembership() async {
    try {
      var res = await MembershipRepository().macedon_membership();

      if (res["status"] == 200) {
        macedonMemebershipModel = MacedonMemebershipModel.fromJson(res);

        state = macedonMemebershipModel ?? MacedonMemebershipModel();
      }
    } catch (e) {
      print("$e this the catch error");
      // state = AsyncValue.error(e, StackTrace.current);
    }
  }
}
