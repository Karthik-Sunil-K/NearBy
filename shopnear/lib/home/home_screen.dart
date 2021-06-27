import 'package:flutter/material.dart';
import 'package:shopnear/components/circularButton.dart';
import 'package:shopnear/home/explore_screen.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        actions: [
          CircularButton(
            buttonIcon: Icons.search,
            buttonAction: () {
              print("Search Screen");
            },
          ),
        ],
      ),
      body: Column(
        children: [HeadingTopBar(), SpecialsContainer()],
      ),
    );
  }
}

//Head

class HeadingTopBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            SizedBox(
              width: 15,
            ),
            Text(
              "Find ",
              style: TextStyle(fontSize: 32, letterSpacing: 1),
            ),
            Text(
              "Your Shop",
              style: TextStyle(
                fontSize: 32,
                fontWeight: FontWeight.bold,
                letterSpacing: 1,
              ),
            ),
          ],
        ),
        SizedBox(
          height: 20,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            buildFlatButton("Groceries", isSelected: true),
            buildFlatButton("Bakers"),
            buildFlatButton("Antiques"),
          ],
        ),
        SizedBox(
          height: 20,
        ),
      ],
    );
  }

  FlatButton buildFlatButton(String text, {bool isSelected = false}) {
    return FlatButton(
      onPressed: () {
        print("Button pressed");
      },
      child: Text(
        text,
        style: TextStyle(
          color: isSelected ? Colors.white : Colors.black,
          fontSize: 18,
        ),
      ),
      shape: StadiumBorder(),
      color: isSelected ? Color(0xff53B175) : Colors.grey[300],
    );
  }
}

// Store List

class StoreList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      physics: BouncingScrollPhysics(),
      scrollDirection: Axis.horizontal,
      child: Row(
        children: [
          SizedBox(
            width: 20,
          ),
          buildColumnWithRow("1", "Amala Stores", context),
          buildColumnWithRow("2", "KR Bakers", context),
          buildColumnWithRow("3", "Abhi Stores", context),
          buildColumnWithRow("4", "AB Stores", context),
        ],
      ),
    );
  }

  GestureDetector buildColumnWithRow(
      String img, String title, BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.of(context).push(MaterialPageRoute(builder: (context) {
          return ExploreScreen();
        }));
      },
      child: Padding(
        padding: const EdgeInsets.all(13.0),
        child: Column(
          children: [
            Container(
              height: 220,
              width: 160,
              child: ClipRRect(
                borderRadius: BorderRadius.circular(20),
                child: Image.asset(
                  "assets/images/1.jpg",
                  fit: BoxFit.cover,
                ),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Text(
              title,
              style: TextStyle(fontSize: 16),
            ),
            SizedBox(
              height: 10,
            ),
          ],
        ),
      ),
    );
  }
}

//Specials

class SpecialsContainer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(40),
            ),
            boxShadow: [
              BoxShadow(
                color: Colors.grey,
                spreadRadius: 1,
                blurRadius: 20,
              ),
            ]),
        child: SingleChildScrollView(
          physics: BouncingScrollPhysics(),
          child: Column(
            children: [
              StoreList(),
              SizedBox(
                height: 20,
              ),
              LineBar(),
              SpeicalItems(),
            ],
          ),
        ),
      ),
    );
  }
}

class SpeicalItems extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.all(30.0),
          child: Row(
            children: [
              Text(
                "Today's Special",
                style: TextStyle(fontSize: 24),
              ),
              Spacer(),
              Text(
                "View All",
                style: TextStyle(fontSize: 20, color: Colors.grey),
              ),
            ],
          ),
        ),
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            children: [
              buildbottomContainer(),
              buildbottomContainer(),
              buildbottomContainer(),
              buildbottomContainer(),
            ],
          ),
        )
      ],
    );
  }

  Container buildbottomContainer() {
    return Container(
      height: 150,
      width: 230,
      margin: EdgeInsets.only(left: 20),
      child: Row(
        children: [
          ClipRRect(
              borderRadius: BorderRadius.circular(30),
              child: SizedBox(
                  height: 120,
                  width: 100,
                  child: Image.asset(
                    "assets/images/2.jpg",
                    fit: BoxFit.cover,
                  ))),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text("Coconut Milk Bath"),
                Text(
                  "16 oz",
                  style: TextStyle(color: Colors.grey, fontSize: 18),
                ),
                Spacer(),
                Text(
                  "\$ 28",
                  style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.w600,
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}

class LineBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // print(MediaQuery.of(context).size.height);
    return Container(
      height: 5,
      width: MediaQuery.of(context).size.width,
      margin: EdgeInsets.only(left: 40),
      alignment: Alignment.centerLeft,
      decoration: BoxDecoration(
        color: Colors.grey[300],
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(10),
          bottomLeft: Radius.circular(10),
        ),
      ),
      child: Container(
        height: 5,
        width: 100,
        decoration: BoxDecoration(
          color: Colors.black,
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(10),
            bottomLeft: Radius.circular(10),
          ),
        ),
      ),
    );
  }
}
