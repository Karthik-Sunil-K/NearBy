import 'dart:async';

import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:shopnear/home/home_screen.dart';
import 'package:shopnear/screens/onboard.dart';

class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => new _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  startTime() async {
    var _duration = new Duration(seconds: 2);
    return new Timer(_duration, navigationPage);
  }

  void navigationPage() {
    if(FirebaseAuth.instance.currentUser!=null){
      Get.off(HomeScreen());
    }
    else{
      Get.off(OnBoard());
    }
    FirebaseAuth.instance.authStateChanges().listen((User?user) {
      if(user==null){
        Get.off(OnBoard());
      }
      else{
        Get.off(HomeScreen());
      }
     });
  }

  @override
  void initState() {
    super.initState();
    startTime();
  }

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      // backgroundColor: Colors.white,
      body: new Center(
        child: Container(
          height: Get.height,
          width: Get.width,
          decoration: BoxDecoration(
              image: DecorationImage(
            image: AssetImage("assets/images/splash.png"),
            fit: BoxFit.cover,
          )),
        ),
      ),
    );
  }
}