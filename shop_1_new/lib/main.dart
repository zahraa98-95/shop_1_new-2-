import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:page_transition/page_transition.dart';
import 'package:shop_1_new/constant.dart';
import 'package:shop_1_new/view/welcomePage.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Shop',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        textTheme: GoogleFonts.dancingScriptTextTheme(Theme.of(context).textTheme),
        primarySwatch: Colors.blue,
      ),
      home:AnimatedSplashScreen(
        backgroundColor:backGround ,

        splash:Center(
          child: Container(
              alignment: Alignment.center,
              width: double.infinity,
              height: double.infinity,

              child:

              Image.asset('assets/images/shop.png',)
          ),
        ),

        duration: 4000,
         splashIconSize: 100,

        nextScreen: WelcomePage(),
        splashTransition: SplashTransition.fadeTransition,
        pageTransitionType: PageTransitionType.bottomToTop,

      ),
    );
  }
}

