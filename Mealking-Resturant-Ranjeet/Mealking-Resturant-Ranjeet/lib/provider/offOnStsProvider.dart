import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../api/repository/api_repository.dart';
import '../model/resturant_login.dart';
import '../model/resturant_product_mdel.dart'; //it need enable for verymuch used

class OffOnstsProvider extends ChangeNotifier {
  bool isloading = true;
  bool cloading = false;
  Resturant_product_listt? resturantproducts;
  ResturantLogin? resturantLogin;
  changeCloading() {
    cloading = !cloading;
    print(cloading);
    notifyListeners();
  }

  Future ResturantLoginWithPhone(String number) async {
    // changeCloading();
    cloading = true;
    var resturnat_login =
        await SyflexMealmatesRepository().LoginWithPhone(number);
    // print(resturnat_login);
    resturantLogin = ResturantLogin.fromJson(resturnat_login);
    // print(resturantLogin!.messages!.status?[0].toJson());
    cloading = false;
    // changeCloading();
    notifyListeners();
  }

  onOffStsUpdate(String status) async {
    changeCloading();
    // cloading = true;
    // print("calling To sts update");
    await SyflexMealmatesRepository().OnOffStsUpdate(status);
    final SharedPreferences prefs =
        await SharedPreferences.getInstance(); //it used verymuch
    var phoneNo = prefs.getString('phone_no');
    // print(phoneNo);
    if (phoneNo != null) {
      await ResturantLoginWithPhone(phoneNo);
    }

    // cloading = false;
    // print("You can end your stsupdate");
    // notifyListeners();
    // changeCloading();
  }

  EditResturantProduct(String status) async {
    await SyflexMealmatesRepository().OnOffStsUpdate(status);
    final SharedPreferences prefs =
        await SharedPreferences.getInstance(); //it used verymuch
    var phoneNo = prefs.getString('phone_no');
    ResturantLoginWithPhone(phoneNo!);
    notifyListeners();
  }
}
