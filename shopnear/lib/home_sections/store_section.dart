import 'package:flutter/material.dart';
import 'package:shopnear/components/circularButton.dart';

class StoreSection extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        height: 250,
        child: ListView.builder(
          shrinkWrap: true,
          scrollDirection: Axis.vertical,
          itemBuilder: (context, index) => StoreCard(
            labelText: "Big Bazaar",
            store: "assets/images/shop1.jpg",
          ),
        ),
      ),
    );
  }
}

class StoreCard extends StatelessWidget {
  final String labelText;
  final String store;

  StoreCard({
    required this.labelText,
    required this.store,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 150,
      margin: EdgeInsets.only(
        top: 10,
        bottom: 10,
        left: 5,
        right: 5,
      ),
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage(store),
          fit: BoxFit.cover,
        ),
        borderRadius: BorderRadius.circular(15),
      ),
      child: Stack(
        children: [
          Positioned(
            top: 5,
            left: 5,
            child: CircularButton(
              iconColor: Colors.blue,
              buttonIcon: Icons.add,
              buttonAction: () {
                print("Create New Story !! ");
              },
            ),
          ),
          Positioned(
            bottom: 10,
            left: 10,
            child: Text(labelText,
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                )),
          ),
        ],
      ),
    );
  }
}
