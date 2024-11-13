import 'dart:async';

import 'package:flutter/material.dart';
import 'package:mealkingresturant/api/repository/api_repository.dart';
import 'package:mealkingresturant/signin_screen.dart';
import 'package:provider/provider.dart';

import 'provider/resturant-product_provider.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  String deviceTokenToSendPushNotification = "";
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    mealMates();
    // FirebaseMessaging.instance.getInitialMessage().then(
    //   (message) {
    //     print("FirebaseMessaging.instance.getInitialMessage");
    //     if (message != null) {
    //       print("New Notification");
    //       print(message.data['_id']);
    //       if (message.data['_id'] != null) {
    //         Navigator.of(context).push(
    //           MaterialPageRoute(
    //             builder: (context) => NavigateScreen(
    //               id: message.data['_id'].toString() ?? "",
    //             ),
    //           ),
    //         );
    //       }
    //     }
    //   },
    // );
    // FirebaseMessaging.onMessage.listen(
    //   (message) {
    //     print("FirebaseMessaging.onMessage.listen");
    //     if (message.notification != null) {
    //       print(message.notification!.title);
    //       print(message.notification!.body);
    //       print("message.data11 ${message.data}");
    //       LocalNotificationService.createanddisplaynotification(message);
    //     }
    //   },
    // );
    // FirebaseMessaging.onMessageOpenedApp.listen(
    //   (message) {
    //     print("FirebaseMessaging.onMessageOpenedApp.listen");
    //     if (message.notification != null) {
    //       print(message.notification!.title);
    //       print(message.notification!.body);
    //       print("message.data22 ${message.data['_id']}");
    //     }
    //   },
    // );
  }

  // Future<void> getDeviceTokenToSendNotification() async {
  //   // final FirebaseMessaging _fcm = FirebaseMessaging.instance;
  //   // final token = await _fcm.getToken();
  //   // deviceTokenToSendPushNotification = token.toString();
  //   print("Token Value $deviceTokenToSendPushNotification");
  // }

  void mealMates() {
    Timer(Duration(seconds: 5), () async {
      // var provider = Provider.of<ResturatProductListProvider>(context);
      await SyflexMealmatesRepository().GetStarted(context);
      // Navigator.pushReplacement(
      //     context, MaterialPageRoute(builder: (context) => LoginScreen()));
    });
  }

  @override
  Widget build(BuildContext context) {
    //  getDeviceTokenToSendNotification();
    return SingleChildScrollView(
      child: Container(
        height: MediaQuery.of(context).size.height * 1,
        width: MediaQuery.of(context).size.width * 1,
        alignment: Alignment.center,
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [
              Colors.yellow,
              Colors.white,
              Colors.white,
              Colors.yellow
              // const Color(0XFFFFFF00),
              // const Color(0xFFFAFAFA),
            ],
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            // begin: const FractionalOffset(0.0, 0.0),
            // end: const FractionalOffset(1.0, 0.0),
            // stops: [0.0, 1.0],
            // tileMode: TileMode.clamp
          ),
        ),
        child: AnimatedContainer(
            duration: Duration(seconds: 5),
            child: Center(
              child: Padding(
                padding: const EdgeInsets.all(50.0),
                child: Image.asset("assets/applogo/mealking.png"),
              ),
            )),
      ),
    );
  }
}
