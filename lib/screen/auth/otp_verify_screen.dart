import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:macedon/screen/bottom_navigation/navigation.dart';
import 'package:macedon/screen/home/home_screen.dart';
import 'package:macedon/static/color.dart';
import 'package:pin_code_fields/pin_code_fields.dart';

import '../../router/navigator_router.dart';
import '../../static/custom_elevated_button.dart';
import '../../static/custom_textfield.dart';
import 'package:sms_autofill/sms_autofill.dart';

import '../../view_model/auth/login_viewModel.dart';

class OtpVerifyScreen extends ConsumerWidget {
  const OtpVerifyScreen({super.key});

//   @override
//   State<OtpVerifyScreen> createState() => _OtpVerifyScreenState();
// }

// class _OtpVerifyScreenState extends State<OtpVerifyScreen> {
//   final _smsController = TextEditingController();

  void initState() {
    // super.initState();
    SmsAutoFill().listenForCode();
  }

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    var reverpod = ref.watch(loginProvider);
    var notifierclass = ref.watch(loginProvider.notifier);
    notifierclass.loginModel = null;
    return Scaffold(
        resizeToAvoidBottomInset: false,
        // appBar: AppBar(
        //   title: Text("Login"),
        // ),
        body: SingleChildScrollView(
          child: SizedBox(
            height: MediaQuery.of(context).size.height * 1,
            child: Container(
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(6)),
                  image: DecorationImage(
                    alignment: Alignment.bottomCenter,
                    image:
                        AssetImage('assets/image/background_image_sports.png'),
                    fit: BoxFit.fill,
                  )),
              child: Container(
                alignment: Alignment.center,
                padding: EdgeInsets.only(bottom: 20),
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    colors: [
                      Colors.blue, // Top color
                      Colors.blue.withOpacity(0.6),
                      Colors.blue.withOpacity(0.6),

                      Colors.purple.withOpacity(0.2), // Bottom color
                    ],
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                  ),
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Expanded(
                      flex: 2,
                      child: Padding(
                        padding: const EdgeInsets.all(48.0),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Column(
                              mainAxisSize: MainAxisSize.min,
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                CircleAvatar(
                                  radius: 40,
                                  backgroundColor: Colors.transparent,
                                  backgroundImage: AssetImage(
                                      "assets/logo/macedon_logo.png"),
                                ),
                                Text(
                                  "Macedon",
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 30,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ],
                            ),
                            Text(
                              'Verification'
                              'You get an OTP via SMS on',
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 16,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    Expanded(
                      flex: 1,
                      child: Form(
                          child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(18.0),
                            child: PinCodeTextField(
                              cursorColor: Theme.of(context).primaryColor,
                              length: 6,
                              controller: notifierclass.otpNumber,
                              autoDisposeControllers: false,
                              textStyle: const TextStyle(
                                  color: Colo.white,
                                  fontWeight: FontWeight.bold),
                              appContext: (context),
                              onChanged: (value) {},
                              keyboardType: TextInputType.number,
                              pinTheme: PinTheme(
                                  shape: PinCodeFieldShape.box,
                                  borderWidth: 1.5,
                                  borderRadius: BorderRadius.circular(10),
                                  activeFillColor: Colo.black,
                                  selectedColor: Colo.black,
                                  activeColor: Colo.black,
                                  inactiveColor: Colo.black,
                                  errorBorderColor: Colo.black,
                                  fieldOuterPadding: EdgeInsets.zero),
                            ),
                          ),

                          // Padding(
                          //   padding: const EdgeInsets.all(18.0),
                          //   child: PinFieldAutoFill(
                          //       keyboardType: TextInputType.number,
                          //       autoFocus: true,
                          //       controller: notifierclass.otpNumber,
                          //       codeLength: 6,
                          //       onCodeChanged: (code) =>
                          //           notifierclass.otpChange(code) //{
                          //       //   // notifierclass.verifyOtp(context);
                          //       // },
                          //       ),
                          // ),

                          // CustomTextField(
                          //     labelTest: "Enter Mobile",
                          //     prefix: Container(
                          //       width: 100,
                          //       // decoration: BoxDecoration(
                          //       //     border: Border(
                          //       //         bottom: BorderSide(color: Colors.black))),
                          //       child: Row(
                          //         mainAxisSize: MainAxisSize.min,
                          //         mainAxisAlignment: MainAxisAlignment.center,
                          //         crossAxisAlignment: CrossAxisAlignment.center,
                          //         children: [
                          //           SizedBox(
                          //               height: 30,
                          //               width: 30,
                          //               child: Image.asset(
                          //                   "assets/image/indian_flag.png")),
                          //           Text("+91"),
                          //           SizedBox(
                          //               height: 40,
                          //               child: VerticalDivider(
                          //                 color: Colors.black,
                          //                 thickness: 0.5,
                          //               ))
                          //         ],
                          //       ),
                          //     ),
                          //     hintText: "Mobile Number"),

                          Padding(
                            padding: const EdgeInsets.only(left: 25, right: 25),
                            child: customElevatedButton(
                                context: context,
                                buttonname: reverpod.isLoading
                                    ? CircularProgressIndicator(
                                        // strokeWidth: 0.2,
                                        )
                                    : Text("Verify OTP"),
                                onpressed: () {
                                  //
                                  // if (reverpod.isLoading) {
                                  //   null;
                                  // } else {
                                  notifierclass.verifyOtp(context);
                                  // }
                                  // navigation(context, BottomNavigation());
                                }),
                          ),
                          SizedBox(
                            height: 5,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Text(
                                "Don't you receive the OTP ?",
                                style: Theme.of(context)
                                    .textTheme
                                    .bodyMedium
                                    ?.copyWith(color: Colors.white),
                              ),
                              Text(
                                "Resend",
                                style: Theme.of(context)
                                    .textTheme
                                    .bodyMedium!
                                    .copyWith(color: Colors.red),
                              )
                            ],
                          )
                        ],
                      )),
                    )
                  ],
                ),
              ),
            ),
          ),
        ));
  }
}
