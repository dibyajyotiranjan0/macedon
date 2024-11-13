import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:mealkingresturant/notification/localNotification.dart';
import 'package:mealkingresturant/provider/offOnStsProvider.dart';
import 'package:mealkingresturant/provider/profileProvider.dart';
import 'package:mealkingresturant/provider/restturantProductProvider.dart';
import 'package:mealkingresturant/provider/resturant-product_provider.dart';
import 'package:mealkingresturant/splash_screen.dart';
import 'package:provider/provider.dart';
import 'package:permission_handler/permission_handler.dart';

Future<void> backgroundHandler(RemoteMessage message) async {
  print(message.data.toString());
  print(message.notification!.title);
}

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Permission.notification.isDenied.then((value) {
    if (value) {
      Permission.notification.request();
    }
  });
  await SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp]);
  // await initFcm();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  FirebaseMessaging.onBackgroundMessage(backgroundHandler);
  LocalNotificationService.initialize();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (context) => ResturatProductListProvider(),
        ),
        ChangeNotifierProvider(
          create: (context) => ResturantproductProvider(),
        ),
        ChangeNotifierProvider(
          create: (context) => OffOnstsProvider(),
        ),
        ChangeNotifierProvider(
          create: (context) => ViewProfileResturantProvider(),
        ),
      ],
      child: MaterialApp(
        title: 'Flutter Demo',
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
          useMaterial3: true,
        ),
        home: SplashScreen(),
      ),
    );
  }
}
