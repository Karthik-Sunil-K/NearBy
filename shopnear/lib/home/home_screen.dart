import 'package:flutter/material.dart';
import 'package:shopnear/home/explore_screen.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        leading: Icon(
          Icons.arrow_back,
          color: Colors.black,
        ),
        title: Text(
          'Select Shop',
          style: TextStyle(
            color: Colors.black,
          ),
        ),
        backgroundColor: Colors.white,
      ),
      body: SingleChildScrollView(
        physics: BouncingScrollPhysics(),
        scrollDirection: Axis.vertical,
        child: Row(
          children: [
            Column(
              children: [
                SizedBox(
                  width: 20,
                ),
                buildColumnWithRow("1", "K R Bakers", context),
                buildColumnWithRow("2", "Amala Stores", context),
                buildColumnWithRow("3", "Abhi Stores", context),
                buildColumnWithRow("4", "Open Kitchen", context),
              ],
            ),
            Column(
              children: [
                SizedBox(
                  width: 20,
                ),
                buildColumnWithRow("1", "K R Bakers", context),
                buildColumnWithRow("2", "Amala Stores", context),
                buildColumnWithRow("3", "Abhi Stores", context),
                buildColumnWithRow("4", "Open Kitchen", context),
              ],
            ),
          ],
        ),
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
        padding: const EdgeInsets.all(18.0),
        child: Column(
          children: [
            Container(
              height: 220,
              width: 160,
              child: ClipRRect(
                borderRadius: BorderRadius.circular(20),
                child: Image.asset(
                  "assets/images/2.jpg",
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
