import 'package:flutter/material.dart';

class Location extends StatefulWidget {
  const Location({Key? key}) : super(key: key);

  @override
  _LocationState createState() => _LocationState();
}

class _LocationState extends State<Location> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Container(
            child: Image.asset(
              'assets/images/loc.PNG',
              fit: BoxFit.contain,
            ),
            width: MediaQuery.of(context).size.width,
          ),
        ],
      ),
    );
  }
}
