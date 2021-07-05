import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:shopnear/user_screen/items_list/product_cards.dart';
import 'package:shopnear/user_screen/items_list/shop_cards.dart';

class ListedItemsOfShop extends StatelessWidget {
  const ListedItemsOfShop({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(Icons.arrow_back_ios_new),
          onPressed: () {
            Get.back(canPop: true);
            print('jj');
          },
        ),
      ),
      body: ListView(
        children: [
          ItemsProductCard(),
          SizedBox(height: 10,),
          ItemsProductCard(),
          SizedBox(height: 10,),
          ItemsProductCard(),
          SizedBox(height: 10,),
          ItemsProductCard(),
          SizedBox(height: 10,),
          ItemsProductCard(),
          SizedBox(height: 10,),
          ItemsProductCard(),
          SizedBox(height: 10,),
          ItemsProductCard(),
          SizedBox(height: 10,),
          ItemsProductCard(),
          SizedBox(height: 10,),
        ],
      ),
    );
  }
}
