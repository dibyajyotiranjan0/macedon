import 'dart:async';

import 'package:flutter/material.dart';
import 'package:mealkingresturant/model/resturant_product_mdel.dart';
import 'package:mealkingresturant/provider/restturantProductProvider.dart';
import 'package:mealkingresturant/signin_screen.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../api/repository/api_repository.dart';
import '../home_screen.dart';
import '../model/Allorder_resturant.dart';
import '../model/resturant_category_mode.dart';
import '../otpVerify_screen.dart';

class ResturatProductListProvider extends ChangeNotifier {
  bool isloading = true;
  bool cloading = false;
  int index = 0;
  Resturant_product_listt? resturantproducts;
  AllOrder_Resturant? allOrder_Resturant;
  AllRescturantCategry? allRescturantCategry;

  List<Map<String, dynamic>> neworder = [];
  List<Map<String, dynamic>> processingorder = [];
  List<Map<String, dynamic>> completeorder = [];
  List<Map<String, dynamic>> rejecteorder = [];
  changeCloading() {
    cloading = !cloading;
    // print(cloading);
    notifyListeners();
  }

  changeIndex(value) {
    index = value;
    notifyListeners();
  }

  phoneSignin(number, BuildContext context) async {
    changeCloading();
    await SyflexMealmatesRepository()
        .verifywithPhoone(number.text.toString())
        .then((value) {
      //cloading = false;
      // return await provider
      //     .verifyWithPhoneNum(number.text.toString())
      //     .then((value) {
      // print(value);
      // var phooneNumber = value["messages"]["status"]["contact_otp"];
      // print(value);
      if (value["messages"]["responsecode"] == "01") {
        changeCloading();
        ScaffoldMessenger.of(context).showSnackBar(SnackBar(
          content: Text(
            'This phoe number is not registred',
            style: TextStyle(color: Colors.red),
          ),
        ));
      } else {
        var otp = value["messages"]["status"]["otp"];
        changeCloading();
        return Navigator.push(
            context,
            MaterialPageRoute(
                builder: (context) => OtpVerification_screen(
                      otp: otp.toString(),
                      phoneNumber: number.text.toString(),
                    )));
      }
    });

    // notifyListeners();
  }

  getAllOrder() async {
    changeCloading();
    neworder.clear();
    processingorder.clear();
    completeorder.clear();
    rejecteorder.clear();

    var allOrder = await SyflexMealmatesRepository().HomeScreenRepo();
    allOrder_Resturant = AllOrder_Resturant.fromJson(allOrder);
    for (var i = 0;
        i < allOrder_Resturant!.messages!.status!.orderdtls!.length;
        i++) {
      if (allOrder_Resturant!.messages!.status!.orderdtls![i].status == "1") {
        neworder
            .add(allOrder_Resturant!.messages!.status!.orderdtls![i].toJson());
        // setState(() {
        // if (neworder.length == 0) {
        //   neworder.add(
        //       snapshot.data["messages"]["status"]["Orderdtls"][i]);
        // } else {
        //   for (var neworderi = 0;
        //       neworderi < neworder.length;
        //       neworderi++) {
        //     neworder[neworderi]["order_id"] ==
        //             snapshot.data["messages"]["status"]["Orderdtls"]
        //                 [i]["order_id"]
        //         ? neworder
        //         : neworder.add(snapshot.data["messages"]["status"]
        //             ["Orderdtls"][i]);
        //   }
        // }

        // });
      } else if (allOrder_Resturant!.messages!.status!.orderdtls![i].status ==
          "2") {
        // setState(() {
        processingorder.length == 0
            ? processingorder.add(
                allOrder_Resturant!.messages!.status!.orderdtls![i].toJson())
            : processingorder;
        // });
      } else if (allOrder_Resturant!.messages!.status!.orderdtls![i].status ==
          "5") {
        // setState(() {
        completeorder.length == 0
            ? completeorder.add(
                allOrder_Resturant!.messages!.status!.orderdtls![i].toJson())
            : completeorder;
        // });
      } else if (allOrder_Resturant!.messages!.status!.orderdtls![i].status ==
          "8") {
        // setState(() {
        rejecteorder.length == 0
            ? rejecteorder.add(
                allOrder_Resturant!.messages!.status!.orderdtls![i].toJson())
            : rejecteorder;
        // });
      } else {}
    }
    changeCloading();
  }

  getSingleOrderStatusUpdate(String orderId, String status) async {
    await SyflexMealmatesRepository().OrderStatusUpdate(orderId, status);

    getAllOrder();
  }

  ResturantEditProduct(
      {productid,
      restaurant_id,
      product_name,
      description,
      productType,
      food_type,
      pro_cat,
      sales_price,
      regular_price,
      img}) async {
    changeCloading();
    await SyflexMealmatesRepository().ResturantEditProduct(
      productid: productid,
      restaurant_id: restaurant_id,
      product_name: product_name,
      description: description,
      productType: productType,
      food_type: food_type,
      pro_cat: pro_cat,
      saleperprice: sales_price,
      regperprice: regular_price,
      imgPath: img,
    );
    await ResturantproductProvider().getproduct();
    changeCloading();
  }

  verifyWithPhoneNum(String number) async {
    await SyflexMealmatesRepository().verifywithPhoone(number);

    notifyListeners();
  }

  AddNewResurantProduct(String resturantName) async {
    cloading = true;
    var dib = await SyflexMealmatesRepository().Addproduct(resturantName);
    ResturantproductProvider().getproduct();
    cloading = false;
    //ResturantLoginWithPhone("9874563214");

    notifyListeners();
    return dib;
  }

  AllCategoryResturant() async {
    changeCloading();
    var data = await SyflexMealmatesRepository().allCategory();
    // ResturantLoginWithPhone("9874563214");
    allRescturantCategry = AllRescturantCategry.fromJson(data);
    changeCloading();
  }
}
