import 'package:flutter/material.dart';
import 'package:intellectual_zone/core/const.dart';
import 'package:intellectual_zone/pages/auth/Login.dart';
import 'package:intellectual_zone/pages/auth/Registration.dart';
import 'package:intellectual_zone/pages/home/home_screen.dart';
import 'package:intellectual_zone/pages/home/main_home.dart';
import 'package:splashscreen/splashscreen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: ConstData.title,
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
      
        primarySwatch: Colors.blue,
      ),
     home: Splash2(),
    );
  }
}
class Splash2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SplashScreen(
      seconds: 6,
      navigateAfterSeconds:   LoginPage(),
      title:  const Text('Interllectual Zone',textScaleFactor: 2,),
      image:  Image.asset('assets/images/logo.png'),
      loadingText: const Text("Loading"),
      photoSize: 100.0,
      loaderColor: Colors.blue,
    );
  }
}
class SecondScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title:Text("GeeksForGeeks")),
      body: Center(
        child:Text("Home page",textScaleFactor: 2,)
      ),
    );
  }
}