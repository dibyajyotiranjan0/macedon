import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:macedon/screen/auth/login_phone_screen.dart';
import 'package:macedon/static/color.dart';

import '../../router/navigator_router.dart';

class LoginScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          // Background Image
          Container(
            decoration: BoxDecoration(
              // image: DecorationImage(
              //   image: AssetImage("assets/image/muscle.png"),
              //   fit: BoxFit.cover,
              // ),
              gradient: LinearGradient(
                colors: [
                  Colors.blue, // Top color
                  // Colors.transparent,
                  Colors.purple.withOpacity(0.2), // Bottom color
                ],
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
              ),
            ),
          ),
          // Content on top of background
          Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              // App Logo
              Expanded(
                flex: 2,
                child: Padding(
                  padding: const EdgeInsets.all(48.0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      CircleAvatar(
                        radius: 40,
                        backgroundColor: Colors.transparent,
                        backgroundImage:
                            AssetImage("assets/logo/macedon_logo.png"),
                      ),
                      // SizedBox(height: 20),
                      // App Title
                      Text(
                        "Macedon",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 30,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      SizedBox(height: 10),
                      // Slogan
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
                flex: 3,
                child: Container(
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(6)),
                      image: DecorationImage(
                        image: AssetImage(
                            'assets/image/background_image_sports.png'),
                        fit: BoxFit.fill,
                      )),
                  child: Container(
                    alignment: Alignment.center,
                    padding: EdgeInsets.only(bottom: 20),
                    decoration: BoxDecoration(
                      gradient: LinearGradient(
                        colors: [
                          Colors.transparent, // Top color
                          // Colors.transparent,
                          Colors.purple.withOpacity(0.7), // Bottom color
                        ],
                        begin: Alignment.topCenter,
                        end: Alignment.bottomCenter,
                      ),
                      //   image: DecorationImage(
                      //     image: AssetImage("assets/image/muscle.png"),
                      //     fit: BoxFit.contain,
                      //   ),
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.end,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Text("SIGNUP WITH",
                            style: Theme.of(context)
                                .textTheme
                                .bodyLarge!
                                .copyWith(color: Colors.white)),
                        SizedBox(
                          height: 10,
                        ),
                        ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            backgroundColor: Colo.aBackground,
                            padding: EdgeInsets.symmetric(
                                vertical: 15, horizontal: 70),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(30),
                            ),
                            // primary: Colors.white,
                            // onPrimary: Colors.black,
                          ),
                          onPressed: () {
                            context.push('/loginPhone');
                            // navigation(context, LoginPhoneScreen());
                          },
                          child: Text(
                            "Login With Mobile Number",
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
