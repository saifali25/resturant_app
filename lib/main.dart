import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:resturant_app/screens/coupon_screen.dart';
import 'package:resturant_app/screens/hovad.dart';
import 'package:resturant_app/screens/kava_zdarama.dart';
import 'package:resturant_app/screens/menu.dart';
import 'package:resturant_app/screens/otarviche_hodiny.dart';
import 'package:resturant_app/screens/pivo_zdarma.dart';
import 'package:resturant_app/screens/skener.dart';
import 'package:resturant_app/screens/skener_two.dart';
import 'package:resturant_app/screens/splash.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
        designSize: const Size(375, 743),
        minTextAdapt: true,
        splitScreenMode: true,
        builder: (context, child) {
          return MaterialApp(
            debugShowCheckedModeBanner: false,
            theme: ThemeData(fontFamily: 'SFProDisplay'),
            title: 'Resturant App',
            home: const SplashScreen(),
          );
        });
  }
}
