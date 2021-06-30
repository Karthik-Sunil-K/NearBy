import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:shopnear/screens/SignInPage.dart';
import 'package:shopnear/screens/onboard.dart';

class LoggedInScreen extends StatelessWidget {
  const LoggedInScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(

     body: StreamBuilder(
       stream: FirebaseAuth.instance.authStateChanges(),
       builder: (context, snapshot) {
         if(snapshot.connectionState==ConnectionState.waiting){
         return Center(child: CircularProgressIndicator());
         }
          else if(snapshot.hasData){
           return Center(child: Text('hey you are logged in'));
         }
         else if(snapshot.hasError){
           return Center(child: Text('Oops!! Something Went Wrong'));
         }
         return SignInPage();
       }
     )
    );
  }
}