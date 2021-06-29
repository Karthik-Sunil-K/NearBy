import 'package:flutter/material.dart';

class SellerCartScreen extends StatefulWidget {
  const SellerCartScreen({Key? key}) : super(key: key);

  @override
  _SellerCartScreenState createState() => _SellerCartScreenState();
}

class _SellerCartScreenState extends State<SellerCartScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text(
          'Cart Screen',
          style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
        ),
      ),
    );
  }
}