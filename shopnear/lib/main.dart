import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:provider/provider.dart';
import 'package:shopnear/provider/google_sign.dart';
import 'package:shopnear/screens/loading_screen.dart';
import 'package:shopnear/screens/location.dart';
import 'package:shopnear/screens/loggedIn_screen.dart';
import 'package:shopnear/screens/SignInPage.dart';
import 'package:shopnear/screens/onboard.dart';
import 'package:shopnear/screens/splash_screen.dart';
import 'package:shopnear/screens/succes.dart';
import 'package:shopnear/bottom_bar.dart';
import 'package:shopnear/sellerscreen/bottom_seller_screen_navigation.dart';

import 'screens/splash_screen.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => GoogleSignInProvider(),
      child: GetMaterialApp(
          debugShowCheckedModeBanner: false,
          title: 'Flutter Demo',
          theme: ThemeData(
            primarySwatch: Colors.blue,
          ),
          home: SplashScreen()),
    );
  }
}
