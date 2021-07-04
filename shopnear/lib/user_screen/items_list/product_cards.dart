import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:shopnear/user_screen/items_list/detailed_shop.dart';

class ItemsProductCard extends StatelessWidget {
  const ItemsProductCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100,
      width: Get.width,
      child: Column(
        children: [
          GestureDetector(
            onTap: () {},
            // child: Padding(
            //   padding: const EdgeInsets.all(8.0),
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: Color(0xFFF5F5F5),
              ),
              child: Padding(
                padding: const EdgeInsets.all(15),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    //container for image
                    // Container(
                    //   height: 80,
                    //   color: Colors.black,
                    //   width: 80,
                    // ),
                    // SizedBox(
                    //   width: 20,
                    //   height: 40,
                    // ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Text(
                          "Blueberry Muffins",
                          style: TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                        Row(
                          children: [
                            Text(
                              "  10 mins",
                              style:
                                  TextStyle(fontSize: 11, color: Colors.grey),
                            ),
                            Text(
                              "  1 serving",
                              style:
                                  TextStyle(fontSize: 11, color: Colors.grey),
                            )
                          ],
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ),
          // ),
        ],
      ),
    );
  }
}
