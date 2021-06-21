import 'package:flutter/material.dart';
import 'package:shopnear/components/rounded_button.dart';

class OnBoard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            fit: BoxFit.cover,
            image: AssetImage('assets/images/1.jpg'),
          ),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(
              height: 150,
            ),
            Container(
              child: Image.asset(
                'assets/icons/1.png',
                fit: BoxFit.contain,
              ),
            ),
            Center(
              child: Text(
                'Welcome \n to our store',
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontSize: 45,
                ),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Text(
              "Get your products in an hour",
              style: TextStyle(color: Colors.grey[400], fontSize: 18),
            ),
            SizedBox(
              height: 70,
            ),
            RoundedButton(
              text: 'Get Started',
              color: Color(0xff53B175),
            ),
          ],
        ),
      ),
    );
  }
}
