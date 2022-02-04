// ignore_for_file: prefer_const_constructors

import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:magic_sdk/magic_sdk.dart';
import 'package:news_app/screens/home_screen.dart';
import 'package:news_app/screens/login_screen.dart';

void main() {
  runApp(const MyApp());
  Magic.instance = Magic("pk_live_8C25A73B1A87FE99");
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(fontFamily: "Poppins"),
      home: Stack(
        children: [
          // AnimatedSplashScreen(
          //   splash: Row(
          //     mainAxisAlignment: MainAxisAlignment.center,
          //     children: const [
          //       Text("News",
          //           style:
          //               TextStyle(fontWeight: FontWeight.bold, fontSize: 40)),
          //       Text("Daily",
          //           style: TextStyle(
          //               color: Colors.blue,
          //               fontWS eight: FontWeight.bold,
          //               fontSize: 40)),
          //     ],
          //   ),
          //   nextScreen: LoginScreen(),
          //   splashTransition: SplashTransition.fadeTransition,
          // ),
          LoginScreen(),
          Magic.instance.relayer,
        ],
      ),
    );
  }
}
