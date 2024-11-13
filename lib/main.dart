import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:macedon/router/app_router.dart';
import 'package:macedon/screen/bottom_navigation/navigation.dart';
import 'package:macedon/static/themedata_style.dart';

void main() {
  runApp(ProviderScope(child: const MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
        title: 'Flutter Demo',
        routerConfig: AppRoute.router,
        // routerDelegate: AppRoute.router.routerDelegate,
        // routeInformationParser: AppRoute.router.routeInformationParser,
        debugShowCheckedModeBanner: false,
        theme: CustomTheme().themedata
        // home: BottomNavigation(),
        );
  }
}
