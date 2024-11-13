import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:macedon/screen/auth/otp_verify_screen.dart';
import 'package:macedon/view_model/manege_state/manege_api_response_state.dart';
import '../../model/login/login_model.dart';
import '../../router/navigator_router.dart';
import '../../static/custom_elevated_button.dart';
import '../../static/custom_textfield.dart';
import '../../view_model/auth/login_viewModel.dart';

class LoginPhoneScreen extends ConsumerWidget {
  const LoginPhoneScreen({super.key});

//   @override
//   _LoginPhoneScreenState createState() => _LoginPhoneScreenState();
// }

// class _LoginPhoneScreenState extends ConsumerState<LoginPhoneScreen> {

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    var reverpod = ref.watch(loginProvider);
    var notifierclass = ref.watch(loginProvider.notifier);
    // var dataAsyncValue = ref.watch(
    //     FutureProvider<LoginModel?>((ref) => notifierclass.submitLogin()));
    return Scaffold(
        resizeToAvoidBottomInset: false,
        // appBar: AppBar(
        //   title: Text("Login"),
        // ),
        body: SingleChildScrollView(
          // padding: EdgeInsets.only(left: 15, right: 15),
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
                              "IT NEVER GET EASIER, YOU JUST GET STRONGER",
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
                          CustomTextField(
                              labelTest: "Enter Mobile",
                              conteroller: notifierclass.mobNumber,
                              keyboard: TextInputType.number,
                              prefix: Container(
                                width: 100,
                                // decoration: BoxDecoration(
                                //     border: Border(
                                //         bottom: BorderSide(color: Colors.black))),
                                child: Row(
                                  mainAxisSize: MainAxisSize.min,
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    SizedBox(
                                        height: 30,
                                        width: 30,
                                        child: Image.asset(
                                            "assets/image/indian_flag.png")),
                                    Text("+91"),
                                    SizedBox(
                                        height: 40,
                                        child: VerticalDivider(
                                          color: Colors.black,
                                          thickness: 0.5,
                                        ))
                                  ],
                                ),
                              ),
                              hintText: "Mobile Number"),
                          Padding(
                              padding:
                                  const EdgeInsets.only(left: 15, right: 15),
                              child: customElevatedButton(
                                  context: context,
                                  buttonname: reverpod.isLoading
                                      ? CircularProgressIndicator()
                                      : Text("Send Otp"),
                                  onpressed: () async {
                                    // print(widgetref
                                    //     .read(loginProvider.notifier)
                                    //     .authState
                                    //     ?.isLoading);
                                    if (reverpod.isLoading) {
                                      null;
                                    } else {
                                      notifierclass.submitLogin(context);
                                    }
                                  })),
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
