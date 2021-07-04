import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:shopnear/components/rounded_button.dart';
import 'package:shopnear/home_page/bottom_bar.dart';
import 'package:shopnear/screens/succes.dart';
import 'package:shopnear/screens/succes.dart';
import 'package:shopnear/user_screen/items_list/producta_cards.dart';

class CartScreen extends StatefulWidget {
  const CartScreen({Key? key}) : super(key: key);

  @override
  _CartScreenState createState() => _CartScreenState();
}

class _CartScreenState extends State<CartScreen> {
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
              "Your Cart",
              style:
                  TextStyle(color: Colors.black, fontWeight: FontWeight.w500),
            ),
            Text(
              "3 items",
              style: Theme.of(context).textTheme.caption,
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
              text: 'Check Out',
              color: Color(0xff53B175),
              press: () {
                Get.off(SuccesPage());
              },
            ),
          ],
        ),
      ),
    );
  }
}
