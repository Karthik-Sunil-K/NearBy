import 'package:carousel_slider/carousel_slider.dart';
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
      appBar: AppBar(
        title: ListTile(
          leading: Text(
            "Explore",
            style: TextStyle(
                color: Colors.black, fontWeight: FontWeight.w600, fontSize: 18),
          ),
        ),
      ),
      body: Column(
        children: [
          CarouselSlider(
            items: [
              Container(
                margin: EdgeInsets.all(5.0),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10.0),
                ),
                child: Image.asset(
                  "assets/images/b1.jpg",
                  fit: BoxFit.contain,
                ),
              ),
              Container(
                margin: EdgeInsets.all(5.0),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10.0),
                ),
                child: Image.asset(
                  "assets/images/b2.jpg",
                ),
              ),
              Container(
                margin: EdgeInsets.all(5.0),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10.0),
                ),
                child: Image.asset(
                  "assets/images/b3.jpg",
                  fit: BoxFit.contain,
                ),
              ),
              Container(
                margin: EdgeInsets.all(5.0),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10.0),
                ),
                child: Image.asset(
                  "assets/images/b6.jpg",
                  fit: BoxFit.contain,
                ),
              ),
              Container(
                margin: EdgeInsets.all(5.0),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10.0),
                ),
                child: Image.asset(
                  "assets/images/b5.jpg",
                  scale: 2,
                  fit: BoxFit.contain,
                ),
              ),
            ],
            options: CarouselOptions(
              height: 200,
              aspectRatio: 16 / 9,
              viewportFraction: 0.8,
              initialPage: 0,
              enableInfiniteScroll: true,
              reverse: false,
              autoPlay: true,
              autoPlayInterval: Duration(seconds: 3),
              autoPlayAnimationDuration: Duration(milliseconds: 800),
              autoPlayCurve: Curves.fastOutSlowIn,
              enlargeCenterPage: true,
              onPageChanged: null,
              scrollDirection: Axis.horizontal,
            ),
          ),
        ],
      ),
    );
  }
}
