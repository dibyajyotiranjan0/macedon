import 'dart:async';

import 'package:flutter/material.dart';
import 'package:mealkingresturant/home_screen.dart';
import 'package:mealkingresturant/provider/offOnStsProvider.dart';
import 'package:mealkingresturant/provider/resturant-product_provider.dart';
import 'package:otp_text_field/otp_field.dart';
import 'package:otp_text_field/otp_field_style.dart';
import 'package:otp_text_field/style.dart';
import 'package:provider/provider.dart';

class OtpVerification_screen extends StatefulWidget {
  String phoneNumber;
  var otp;

  OtpVerification_screen(
      {required this.phoneNumber, required this.otp, super.key});

  @override
  State<OtpVerification_screen> createState() => _OtpVerification_screenState();
}

class _OtpVerification_screenState extends State<OtpVerification_screen> {
  OtpFieldController otpController = OtpFieldController();
  var otpUserInput;
  final _scaffoldKey = GlobalKey<ScaffoldState>();
  bool loading = false;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    startTimer();
  }

  @override
  void dispose() {
    _timer.cancel();
    // _numberStreamController.close();
    // TODO: implement dispose
    super.dispose();
  }

  VeryfyOtp() async {
    // String url = "https://collegeprojectz.com/mealmate/API/LoginOTP";
    // try {
    //   FormData formData = FormData.fromMap({
    //     'contact': '7008170926',
    //   });
    //   Response response = await dio.post(url,
    //       data: formData,
    //       options: Options(headers: {
    //         "Content-Type": "multipart/form-data",
    //         "Accept": "*/*",
    //         "Connection": "keep-alive"
    //       }));
    //   print(response.data);
    // } catch (e) {
    //   print("Ths is wrong api call  ${e}");
    // }
    // showDialog(
    //   context: context,
    //   barrierDismissible: false,
    //   builder: (context) {
    //     return Container(
    //       alignment: Alignment.center,
    //       height: 100,
    //       width: 100,
    //       color: Colors.transparent,
    //       child: Center(
    //         child: CircularProgressIndicator(
    //           color: Colors.white,
    //         ),
    //       ),
    //     );
    //   },
    // );

    final provider =
        await Provider.of<OffOnstsProvider>(context, listen: false);
    return widget.otp.toString() == otpUserInput.toString()
        ? await provider.ResturantLoginWithPhone(widget.phoneNumber.toString())
            .then((value) {
            //print(value["messages"]["status"]["Orderdtls"][0]);
            Navigator.pushAndRemoveUntil(
              context,
              MaterialPageRoute(builder: (context) => HomeScreen()),
              (newRoute) => false,
            );
          })
        : ScaffoldMessenger.of(context).showSnackBar(SnackBar(
            content: Text('Please Enter Valid Otp'),
          ));
  }

  late Timer _timer;
  int _start = 30;

  void startTimer() {
    const oneSec = const Duration(seconds: 1);
    _timer = new Timer.periodic(
      oneSec,
      (Timer timer) {
        if (_start == 0) {
          setState(() {
            timer.cancel();
          });
        } else {
          setState(() {
            _start--;
          });
        }
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    var provider = Provider.of<ResturatProductListProvider>(context);
    return Scaffold(
      key: _scaffoldKey,
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        leading: InkWell(
          onTap: () {
            _timer.cancel();
            Navigator.pop(context);
            setState(() {});
          },
          child: Icon(Icons.arrow_back),
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(20),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Container(
                padding:
                    EdgeInsets.only(top: 20, bottom: 20, left: 50, right: 50),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    FittedBox(
                      fit: BoxFit.none,
                      child: Text(
                        "OTP Verification",
                        style: TextStyle(
                            fontSize: 25, fontWeight: FontWeight.bold),
                      ),
                    ),
                    FittedBox(child: Text("we has send the code to the nuber")),
                    Text("+91 ${widget.phoneNumber}"),
                  ],
                ),
              ),
              Padding(
                padding:
                    EdgeInsets.only(top: 10, left: 10, bottom: 20, right: 10),
                child: OTPTextField(
                    controller: otpController,
                    length: 4,
                    width: MediaQuery.of(context).size.width,
                    textFieldAlignment: MainAxisAlignment.spaceEvenly,
                    fieldWidth: 50,
                    fieldStyle: FieldStyle.box,
                    outlineBorderRadius: 15,
                    style: TextStyle(
                      fontSize: 17,
                    ),
                    onChanged: (pin) {
                      print("Changed: " + pin);
                    },
                    onCompleted: (pin) {
                      otpUserInput = pin;
                    }),
              ),
              // child: Row(
              //   mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              //   children: [
              //     SizedBox(
              //         height: 50,
              //         width: 50,
              //         child: TextField(
              //           maxLength: 1,
              //           textAlign: TextAlign.center,
              //           keyboardType: TextInputType.number,
              //           style: TextStyle(
              //               fontSize: 25,
              //               fontWeight: FontWeight.bold,
              //               color: Colors.black),
              //           cursorColor: Colors.transparent,
              //           cursorWidth: 0,
              //           decoration: InputDecoration(
              //               counterText: "",
              //               fillColor: Colors.grey[200],
              //               border: InputBorder.none,
              //               contentPadding: EdgeInsets.only(bottom: 5),
              //               filled: true,
              //               focusedBorder: OutlineInputBorder(
              //                   borderSide: BorderSide(
              //                       color: Colors.redAccent,
              //                       width: 2.0,
              //                       style: BorderStyle.solid),
              //                   borderRadius: BorderRadius.circular(5))),
              //         )),
              //     SizedBox(
              //         height: 50,
              //         width: 50,
              //         child: TextField(
              //           maxLength: 1,
              //           textAlign: TextAlign.center,
              //           keyboardType: TextInputType.number,
              //           cursorColor: Colors.transparent,
              //           cursorWidth: 0,
              //           style: TextStyle(
              //               fontSize: 25,
              //               fontWeight: FontWeight.bold,
              //               color: Colors.black),
              //           decoration: InputDecoration(
              //               counterText: "",
              //               fillColor: Colors.grey[200],
              //               contentPadding: EdgeInsets.only(bottom: 5),
              //               filled: true,
              //               border: InputBorder.none,
              //               focusedBorder: OutlineInputBorder(
              //                   borderSide: BorderSide(
              //                       color: Colors.redAccent,
              //                       width: 2.0,
              //                       style: BorderStyle.solid),
              //                   borderRadius: BorderRadius.circular(5))),
              //         )),
              //     SizedBox(
              //         height: 50,
              //         width: 50,
              //         child: TextField(
              //           textAlign: TextAlign.center,
              //           cursorColor: Colors.transparent,
              //           cursorWidth: 0,
              //           maxLength: 1,
              //           keyboardType: TextInputType.number,
              //           style: TextStyle(
              //               fontSize: 25,
              //               fontWeight: FontWeight.bold,
              //               color: Colors.black),
              //           decoration: InputDecoration(
              //               border: InputBorder.none,
              //               fillColor: Colors.grey[200],
              //               contentPadding: EdgeInsets.only(bottom: 5),
              //               filled: true,
              //               counterText: "",
              //               focusedBorder: OutlineInputBorder(
              //                   borderSide: BorderSide(
              //                       color: Colors.redAccent,
              //                       width: 2.0,
              //                       style: BorderStyle.solid),
              //                   borderRadius: BorderRadius.circular(5))),
              //         )),
              //     SizedBox(
              //         height: 50,
              //         width: 50,
              //         child: TextField(
              //           textAlign: TextAlign.center,
              //           cursorColor: Colors.transparent,
              //           cursorWidth: 0,
              //           maxLength: 1,
              //           keyboardType: TextInputType.number,
              //           style: TextStyle(
              //               fontSize: 25,
              //               fontWeight: FontWeight.bold,
              //               color: Colors.black),
              //           decoration: InputDecoration(
              //               border: InputBorder.none,
              //               fillColor: Colors.grey[200],
              //               contentPadding: EdgeInsets.only(bottom: 5),
              //               filled: true,
              //               counterText: "",
              //               focusedBorder: OutlineInputBorder(
              //                   borderSide: BorderSide(
              //                       color: Colors.redAccent,
              //                       width: 2.0,
              //                       style: BorderStyle.solid),
              //                   borderRadius: BorderRadius.circular(5))),
              //         )),
              //   ],
              // ),

              //),
              SizedBox(
                  height: 50,
                  width: double.infinity,
                  child: ElevatedButton(
                    onPressed: () => provider.cloading ? null : VeryfyOtp(),
                    child: provider.cloading
                        ? Center(
                            child: CircularProgressIndicator(),
                          )
                        : Text(
                            "Verify",
                            style: TextStyle(color: Colors.white),
                          ),
                    style: ButtonStyle(
                        backgroundColor:
                            MaterialStateProperty.all(Colors.green),
                        shape:
                            MaterialStateProperty.all<RoundedRectangleBorder>(
                                RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(8.0),
                        ))),
                  )),
              SizedBox(
                height: 30,
              ),
              Text.rich(
                TextSpan(
                  children: [
                    TextSpan(text: 'Resend code in '),
                    TextSpan(
                      text: '00:${_start}',
                      style: TextStyle(
                          fontWeight: FontWeight.bold, color: Colors.red),
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
