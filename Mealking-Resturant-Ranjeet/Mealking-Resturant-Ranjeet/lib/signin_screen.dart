import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:mealkingresturant/provider/resturant-product_provider.dart';
import 'package:provider/provider.dart';

import 'package:flutter/services.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final number = TextEditingController();
  final dio = Dio();
  bool loading = false;

  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height * 0.1;
    var width = MediaQuery.of(context).size.width * 0.1;
    // var provider =
    //     Provider.of<ResturatProductListProvider>(context, listen: false);
    postApi() {
      try {
        var provider =
            Provider.of<ResturatProductListProvider>(context, listen: false);
        provider.phoneSignin(number, context);
      } catch (e) {
        ScaffoldMessenger.of(context).showSnackBar(SnackBar(
          content: Text(
            'This phoe number is not registred',
            style: TextStyle(color: Colors.red),
          ),
        ));
      }
    }

    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          // height: height * 10.0,
          // width: width * 10,
          alignment: Alignment.center,
          padding: EdgeInsets.all(30),
          child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                  height: height * 3,
                  width: width * 8,
                  padding: EdgeInsets.all(5),
                  margin: EdgeInsets.only(bottom: 20),
                  child: Image.asset(
                    "assets/applogo/mealking.png",
                    fit: BoxFit.contain,
                  ),
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Column(
                      children: [
                        Container(
                          margin: EdgeInsets.only(bottom: 30),
                          alignment: Alignment.bottomCenter,
                          child: Text(
                            "Sign In",
                            style: TextStyle(
                                fontSize: 38, fontWeight: FontWeight.bold),
                          ),
                        ),
                        Align(
                            alignment: Alignment.centerLeft,
                            child: Text(
                              "Enter Contact No",
                              style: TextStyle(
                                  fontSize: 15, fontWeight: FontWeight.bold),
                            )),
                        Container(
                            height: 50,
                            margin: EdgeInsets.only(top: 5, bottom: 10),
                            width: double.infinity,
                            child: TextField(
                              autocorrect: true,
                              maxLines: 1,
                              controller: number,
                              keyboardType: TextInputType.number,
                              inputFormatters: [
                                LengthLimitingTextInputFormatter(
                                    10), //n is maximum number of characters you want in textfield
                              ],
                              style: TextStyle(
                                  fontSize: 20, fontWeight: FontWeight.bold),
                              decoration: InputDecoration(
                                  // label: Text("Contact No"),
                                  // floatingLabelBehavior: FloatingLabelBehavior.always,
                                  // floatingLabelStyle: TextStyle(),
                                  hintText: "8658888234",
                                  hintStyle: TextStyle(
                                      color: Colors.black26, fontSize: 14),
                                  contentPadding:
                                      EdgeInsets.only(left: 25, bottom: 5),
                                  focusedBorder: OutlineInputBorder(
                                      borderSide: const BorderSide(
                                          color: Colors.black, width: 2.0),
                                      borderRadius: BorderRadius.circular(10)),
                                  border: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(10),
                                      borderSide: BorderSide(
                                          color: Colors.black, width: 2))),
                            )),
                      ],
                    ),
                    Container(
                      margin: EdgeInsets.only(top: 25),
                      height: 50,
                      width: double.infinity,
                      child: Consumer<ResturatProductListProvider>(
                          builder: (context, valu, child) {
                        return ElevatedButton(
                            onPressed: () {
                              if (number.text.toString().length == 10) {
                                valu.cloading ? null : postApi();
                              } else {
                                ScaffoldMessenger.of(context)
                                    .showSnackBar(SnackBar(
                                  content: Text(
                                    'Please Enter valid Phone number',
                                    style: TextStyle(color: Colors.red),
                                  ),
                                ));
                              }
                            },
                            child: valu.cloading
                                ? Center(
                                    child: CircularProgressIndicator(),
                                  )
                                : Text(
                                    "Sign in",
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontWeight: FontWeight.bold,
                                        fontSize: 23),
                                  ),
                            style: ButtonStyle(
                                backgroundColor:
                                    MaterialStateProperty.all(Colors.green),
                                shape: MaterialStateProperty.all(
                                    RoundedRectangleBorder(
                                        borderRadius:
                                            BorderRadius.circular(10)))));
                      }),
                    ),
                  ],
                ),
              ]),
        ),
      ),
    );
  }
}
