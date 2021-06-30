import 'package:flutter/material.dart';
import 'package:shopnear/components/rounded_button.dart';
import 'package:shopnear/screens/loggedIn_screen.dart';
import 'package:shopnear/screens/location.dart';
import 'package:shopnear/screens/SignInPage.dart';

class OnBoard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
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
            Container(
              margin: EdgeInsets.symmetric(vertical: 10),
              width: size.width * 0.8,
              child: ClipRRect(
                borderRadius: BorderRadius.circular(20),
                child: FlatButton(
                  padding: EdgeInsets.symmetric(vertical: 20, horizontal: 40),
                  color: Color(0xff53B175),
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => LocationPage(),
                      ),
                    );
                  },
                  child: Text(
                    'Get Started',
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.w600,
                      fontSize: 18,
                    ),

                  ),
                ),
              )
            )
          ],
        ),
      ),
    );
  }
}
