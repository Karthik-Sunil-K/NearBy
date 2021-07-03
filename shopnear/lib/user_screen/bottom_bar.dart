import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:shopnear/user_screen/cart_screen.dart';
import 'package:shopnear/user_screen/explore_screen.dart';
import 'package:shopnear/user_screen/home_screen.dart';
import 'package:shopnear/user_screen/user_screen.dart';

class BottomBarScreen extends StatefulWidget {
  static const routeName = '/BottomBarScreen';

  @override
  _BottomBarScreenState createState() => _BottomBarScreenState();
}

class _BottomBarScreenState extends State<BottomBarScreen> {
  List _pages = [
    UserHomeScreen(),
    ExploreScreen(),
    CartScreen(),
    UserScreen(),
  ];

  /* List<Map<String, Object>> _pages;
  int _selectedIndex = 0;
  @override
  void initState() {
    _pages = [
      {'page': Home(), 'title': 'Home Screen'},
      {'page': User(), 'title': 'User Screen'},
    ];
    super.initState();
  }
 */

  int _selectedIndex = 0;
  void _selectedPage(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _pages[_selectedIndex],
      bottomNavigationBar: BottomAppBar(
        shape: CircularNotchedRectangle(),
        child: BottomNavigationBar(
          onTap: _selectedPage,
          backgroundColor: Theme.of(context).primaryColor,
          unselectedItemColor: Colors.black,
          selectedItemColor: Color(0xff53B175),
          currentIndex: _selectedIndex,
          items: [
            BottomNavigationBarItem(
              icon: SvgPicture.asset("assets/icons/Shop Icon.svg"),
              tooltip: 'Home',
              label: 'Home',
            ),
            BottomNavigationBarItem(
              icon: SvgPicture.asset("assets/icons/Heart Icon.svg"),
              tooltip: 'Explore',
              label: 'Explore',
            ),
            BottomNavigationBarItem(
              icon: SvgPicture.asset("assets/icons/Cart Icon.svg"),
              tooltip: 'Cart',
              label: 'Cart',
            ),
            BottomNavigationBarItem(
              icon: SvgPicture.asset("assets/icons/User Icon.svg"),
              tooltip: 'User',
              label: 'User',
            ),
          ],
        ),
      ),
    );
  }
}
