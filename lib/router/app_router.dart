import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:macedon/screen/auth/otp_verify_screen.dart';
import 'package:macedon/screen/error_screen/error_screen.dart';
import 'package:macedon/screen/membership/membership_screen.dart';
import 'package:macedon/screen/offer_screen/offer-screen.dart';
import 'package:macedon/screen/profile/profile_screen.dart';

import '../screen/auth/login_phone_screen.dart';
import '../screen/auth/login_screen.dart';
import '../screen/barcode_scanner/scanner/scanner_widget.dart';
import '../screen/barcode_scanner/scanner_screen.dart';
import '../screen/bottom_navigation/navigation.dart';
import '../screen/home/home_screen.dart';
import '../screen/home/search/serch_screen.dart';
import '../screen/home/step_counter/step_counter_sccreen.dart';
import '../screen/onboarding/onboarding_screen.dart';
import '../screen/profile/edit_profile_screen.dart';
import '../screen/sports_channel/sports_category.dart';
import '../screen/sports_channel/widget/single_sports_category_detail_screen.dart';

final _rootNavigatorKey = GlobalKey<NavigatorState>();
final _shellNavigatorKey = GlobalKey<NavigatorState>();

class AppRoute {
  // static const String splashScreen = '/splashScreen';
  // static const String loginScreen = '/login';
  // static const String verifyOtpScreen = '/verifyOtp';
  // static const String onboardScreen = '/onboardscreen';
  // static const String homeScreen = '/home';
  // static const String mytripScreen = '/mytrip';
  // static const String profileScreen = '/profile';
  // static const String moreScreen = '/more';
  // static const String pickupLocationScreen = '/pickupLocation';
  // static const String destinationLocationScreen = '/destinationLocation';
  // static const String bookingScreen1Screen = '/bookingScreen1';
  // static const String finalbookingScreen = '/finalbooking';

  static final GoRouter router = GoRouter(
    navigatorKey: _rootNavigatorKey,
    // redirect: (context, state) async {
    //   SharedPreferences preferences = await SharedPreferences.getInstance();
    //   var isLogin = preferences.getString('driverID');
    //   // print(state.namedLocation("/login"));
    //   // Allow navigation to login without being redirected back to '/on'
    //   if (isLogin == null && state.path == '/login') {
    //     return null;
    //   }

    //   // Redirect based on login status
    //   if (isLogin != null) {
    //     return '/home';
    //   } else {
    //     return '/on';
    //   }
    // },
    initialLocation: '/on', //comment for implemetation
    // initialLocation: '/home',
    errorBuilder: (context, state) => ErrorScreen(),
    // redirect: (BuildContext context, GoRouterState state) async {
    //   final SharedPreferences prefs = await SharedPreferences.getInstance();
    //   String? phone = await prefs.getString('phone');
    //   if (phone != null) {
    //     // return '/home';
    //     context.go('/home', extra: {'id': "0"});
    //     //return;
    //   } else {
    //     return null;
    //   }
    // },

    routes: [
      //   GoRoute(
      //     path: '/',
      //     name: "Splash Screen",
      //     parentNavigatorKey: _rootNavigatorKey,
      //     builder: (context, state) => const SplashScreen(),
      //   ),
      GoRoute(
        path: '/on',
        name: "onboardScreen",
        parentNavigatorKey: _rootNavigatorKey,
        builder: (context, state) => const OnboardingScreen(),
      ),
      //   GoRoute(
      //     path: '/permission',
      //     name: "permission",
      //     parentNavigatorKey: _rootNavigatorKey,
      //     builder: (context, state) => const LocationPhone(),
      //   ),
      GoRoute(
        path: '/login',
        name: "Login",
        parentNavigatorKey: _rootNavigatorKey,
        builder: (context, state) => LoginScreen(),
      ), //LoginPhoneScreen
      GoRoute(
        path: '/loginPhone',
        name: "LoginPhone",
        parentNavigatorKey: _rootNavigatorKey,
        builder: (context, state) => LoginPhoneScreen(),
      ), //OtpVerifyScreen
      GoRoute(
        path: '/otpVerify',
        name: "otpVerify",
        parentNavigatorKey: _rootNavigatorKey,
        builder: (context, state) {
          return OtpVerifyScreen();
        },
      ), //LoginPhoneScreen
      // GoRoute(
      //   path: '/loginPhone',
      //   name: "LoginPhone",
      //   parentNavigatorKey: _rootNavigatorKey,
      //   builder: (context, state) => LoginPhoneScreen(),
      // ), //
      //   GoRoute(
      //       path: '/otpVerify',
      //       name: "verifyOtp",
      //       parentNavigatorKey: _rootNavigatorKey,
      //       builder: (context, state) {
      //         Map<String, dynamic>? parameter =
      //             state.extra as Map<String, dynamic>?;
      //         return OtpVerify();
      //       }), //
      ShellRoute(
        navigatorKey: _shellNavigatorKey,
        builder: (context, state, child) {
          Map<String, dynamic>? parameter =
              state.extra as Map<String, dynamic>?;
          // print(parameter!['id']);
          // int index = 0;
          return BottomNavigation(
            child: child,
            // // index: 0,
            index: int.parse(parameter!['id'] ??
                "0"), //parameter!['id'] ??  comment for implement
          );
        },
        routes: [
          GoRoute(
            path: '/home',
            name: "Home",
            // parentNavigatorKey: _shellNavigatorKey,
            builder: (context, state) => const HomeScreen(),
            routes: [
              GoRoute(
                path: 'listAllCenter',
                name: "ListAllCenter",
                parentNavigatorKey: _shellNavigatorKey,
                builder: (context, state) =>
                    GymListItem(), // Your search screen widget
              ),

              GoRoute(
                path: 'center',
                name: "center",
                parentNavigatorKey: _shellNavigatorKey,
                builder: (context, state) {
                  Map<String, dynamic>? parameter =
                      state.extra as Map<String, dynamic>?;
                  return SinglesportsChannel(parameter!['centerId']);
                }, // Your search screen widget
              ),
              GoRoute(
                path: 'search',
                name: "search",
                parentNavigatorKey: _shellNavigatorKey,
                builder: (context, state) {
                  return SearchPage();
                }, // Your search screen widget
              ),

              //
            ],
          ),

          GoRoute(
              path: '/membership',
              name: "Membership",
              // parentNavigatorKey: _shellNavigatorKey,
              builder: (context, state) => const MemebershipScreen(),
              routes: []),
          //       //FullDetaisTrip()
          GoRoute(
              path: '/profile',
              name: "Profile",
              // parentNavigatorKey: _shellNavigatorKey,
              builder: (context, state) => ProfileScreen(),
              routes: [
                GoRoute(
                  path: 'editprofile',
                  name: "EditProfile",
                  builder: (context, state) =>
                      EditProfileScreen(), // Your profile screen widget
                ),
                GoRoute(
                  path: 'step',
                  name: "step",
                  parentNavigatorKey: _shellNavigatorKey,
                  builder: (context, state) {
                    return StepCounterScreen();
                  },
                ),
              ]),
          GoRoute(
              path: '/scanner',
              name: "Scanner",
              // parentNavigatorKey: _shellNavigatorKey,
              builder: (context, state) => ScannerScreen(),
              routes: [
                GoRoute(
                  path: 'barcode',
                  name: "barcode",
                  parentNavigatorKey: _shellNavigatorKey,
                  builder: (context, state) {
                    return BarcodeScannerScreen();
                  },
                ),
              ]),

          GoRoute(
              path: '/offer',
              name: "Offer",
              // parentNavigatorKey: _shellNavigatorKey,
              builder: (context, state) => OfferScreen(),
              routes: [
                // GoRoute(
                //   path: 'editProfile',
                //   name: "editProfile",
                //   parentNavigatorKey: _shellNavigatorKey,
                //   builder: (context, state) {
                //     return ScannerScreen();
                //   },
                // ),
              ]),
        ],
      )
    ],
  );
}
