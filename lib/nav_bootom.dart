import 'package:flutter/material.dart';
import 'package:foodapp2_icream/bootom_nav_page/catagory.dart';
import 'package:foodapp2_icream/bootom_nav_page/home_nav.dart';
import 'package:foodapp2_icream/bootom_nav_page/profile.dart';
import 'package:foodapp2_icream/bootom_nav_page/serce.dart';
import 'package:foodapp2_icream/home_app.dart';
import 'package:google_nav_bar/google_nav_bar.dart';

class NavigationDimo extends StatefulWidget {
  const NavigationDimo({Key? key}) : super(key: key);

  @override
  State<NavigationDimo> createState() => _NavigationDimoState();
}

class _NavigationDimoState extends State<NavigationDimo> {
  int _selectedIndex = 0;

  List<Widget> _widgetOptions = <Widget>[
    HomeApp(),
    Profile(),
    Serce(),
    Catagory(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        elevation: 20,
        title: Text('FoodIcrem'),
      ),
      drawer: Drawer(),
      body: Center(
        child: _widgetOptions.elementAt(_selectedIndex),
      ),
      bottomNavigationBar: Container(
        decoration: BoxDecoration(
          color: Colors.white,
          boxShadow: [
            BoxShadow(
              blurRadius: 20,
              color: Colors.black.withOpacity(.1),
            )
          ],
        ),
        child: SafeArea(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15.0, vertical: 8),
            child: GNav(
              rippleColor: Colors.grey[300]!,
              hoverColor: Colors.grey[100]!,
              gap: 8,
              activeColor: Colors.black,
              iconSize: 24,
              padding: EdgeInsets.symmetric(horizontal: 20, vertical: 12),
              duration: Duration(milliseconds: 400),
              tabBackgroundColor: Colors.grey[100]!,
              color: Colors.black,
              tabs: [
                GButton(
                  icon: Icons.home,
                  text: 'Home',
                ),
                GButton(
                  icon: Icons.category,
                  text: 'Likes',
                ),
                GButton(
                  icon: Icons.search,
                  text: 'Search',
                ),
                GButton(
                  icon: Icons.person_off,
                  text: 'Profile',
                ),
              ],
              selectedIndex: _selectedIndex,
              onTabChange: (index) {
                setState(() {
                  _selectedIndex = index;
                });
              },
            ),
          ),
        ),
      ),
    );
  }
}
