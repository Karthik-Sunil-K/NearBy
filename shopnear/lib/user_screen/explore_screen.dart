import 'package:flutter/material.dart';
import 'package:shopnear/components/rounded_button.dart';
import 'package:shopnear/user_screen/items_list/producta_cards.dart';

class ExploreScreen extends StatefulWidget {
  const ExploreScreen({Key? key}) : super(key: key);

  @override
  _ExploreScreenState createState() => _ExploreScreenState();
}

class _ExploreScreenState extends State<ExploreScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: () {
            //   setState(() {
            //     Navigator.push(
            //       context,
            //       MaterialPageRoute(
            //         builder: (context) => BottomBarScreen(),
            //       ),
            //     );
            //   });
          },
        ),
        title: Column(
          children: [
            Text(
              "Favourites",
              style:
                  TextStyle(color: Colors.black, fontWeight: FontWeight.w500),
            ),
          ],
        ),
      ),
      body: Container(
        child: Column(
          children: [
            ItemsShopCards(),
            ItemsShopCards(),
            ItemsShopCards(),
            SizedBox(
              height: 150,
            ),
            RoundedButton(
              text: 'Explore More',
              color: Color(0xff53B175),
              press: () {},
            ),
          ],
        ),
      ),
    );
  }
}
