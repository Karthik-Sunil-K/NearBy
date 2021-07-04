import 'package:flutter/material.dart';
import 'package:shopnear/components/rounded_button.dart';
import 'package:shopnear/screens/version_details.dart';
import 'package:shopnear/user_screen/items_list/shop_cards.dart';

class ExploreScreen extends StatefulWidget {
  const ExploreScreen({Key? key}) : super(key: key);

  @override
  _ExploreScreenState createState() => _ExploreScreenState();
}

class _ExploreScreenState extends State<ExploreScreen> {
  @override
  Widget build(BuildContext context) {
    return VersionTwoDetails();
  }
}
