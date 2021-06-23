import 'package:flutter/material.dart';
import 'package:shopnear/home/cart_screen.dart';
import 'package:shopnear/home/explore_screen.dart';
import 'package:shopnear/home/home_screen.dart';
import 'package:shopnear/home/user_screen.dart';

class BottomBarScreen extends StatefulWidget {
  static const routeName = '/BottomBarScreen';

  @override
  _BottomBarScreenState createState() => _BottomBarScreenState();
}

class _BottomBarScreenState extends State<BottomBarScreen> {
  List _pages = [
    HomeScreen(),
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
              icon: Icon(Icons.home),
              tooltip: 'Home',
              label: 'Home',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.youtube_searched_for),
              tooltip: 'Explore',
              label: 'Explore',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.add_shopping_cart),
              tooltip: 'Cart',
              label: 'Cart',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.person),
              tooltip: 'User',
              label: 'User',
            ),
          ],
        ),
      ),
    );
  }
}
