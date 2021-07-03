import 'package:flutter/material.dart';

class SellerUserScreen extends StatefulWidget {
  const SellerUserScreen({Key? key}) : super(key: key);

  @override
  _SellerUserScreenState createState() => _SellerUserScreenState();
}

class _SellerUserScreenState extends State<SellerUserScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text(
          'Profile',
          style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
        ),
      ),
    );
  }
}