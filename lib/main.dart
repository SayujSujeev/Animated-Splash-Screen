import 'package:animated_splash_screen/constants.dart';
import 'package:animated_splash_screen/home.dart';
import 'package:animated_splash_screen/splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';


void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.portraitUp,
      DeviceOrientation.portraitDown,
    ]);
    return MaterialApp(

      debugShowCheckedModeBanner: false,
      title: 'Animated Splash Screen',
      theme: ThemeData(primaryColor: Colors.orange[200]),
      routes: <String, WidgetBuilder>{
        HOME: (BuildContext context) => Home(),
        SPLASH_SCREEN: (BuildContext context) => AnimatedSplashScreen(),


      },
      initialRoute: SPLASH_SCREEN,
    );
  }
}