import 'package:flutter/material.dart';
import 'package:shopnear/components/rounded_button.dart';

class SuccesPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Container(
            child: Image.asset(
              'assets/images/succes.PNG',
              fit: BoxFit.contain,
            ),
            width: MediaQuery.of(context).size.width,
          ),
          Text(
            'Your Order has been \n accepted',
            textAlign: TextAlign.center,
            style: TextStyle(
              color: Colors.black,
              fontSize: 28,
              fontWeight: FontWeight.w600,
            ),
          ),
          SizedBox(
            height: 25,
          ),
          Text(
            'Your items has been placcd and is on \n it’s way to being processed',
            textAlign: TextAlign.center,
            style: TextStyle(
              color: Color(0xff7C7C7C),
              fontSize: 16,
            ),
          ),
          SizedBox(
            height: 45,
          ),
          RoundedButton(
            text: 'Track Order',
            color: Color(0xff53B175),
            press: () {},
          ),
          RoundedButton(
            text: 'Back to home',
            color: Colors.white,
            textColor: Colors.black,
            press: () {},
          ),
        ],
      ),
    );
  }
}
