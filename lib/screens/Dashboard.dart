import 'package:flutter/material.dart';

import 'Contacts.dart';
import 'Favorite.dart';
import 'HomeScreen.dart';
import 'MyProfile.dart';
import 'Settings.dart';

class Dashboard extends StatefulWidget {
  const Dashboard({Key? key}) : super(key: key);

  @override
  _DashboardState createState() => _DashboardState();
}

class _DashboardState extends State<Dashboard> {
  int _selectedIndex = 0;
  final List<Widget> _pages = [
    HomeScreen(),
    Settings(),
    Contacts(),
    Favorite(),
    MyProfile(),
  ];
  @override
  Widget build(BuildContext context) {
    return Theme(
      data: Theme.of(context).copyWith(
        canvasColor: Colors.black, // Set the canvas color
      ),
      child: Scaffold(
        backgroundColor: Colors.black12,
        body: _pages[_selectedIndex],
        bottomNavigationBar: Container(
          child:  BottomNavigationBar(
            items: [
              BottomNavigationBarItem(
                icon: Icon(Icons.home),
                label: 'Home',
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.search),
                label: 'Search',
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.add),
                label: 'Add',
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.favorite),
                label: 'Favorite',
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.person),
                label: 'Profile',
              ),
            ],
            currentIndex: _selectedIndex,
            selectedItemColor: Colors.white, // Set the color of the selected item
            unselectedItemColor: Colors.greenAccent, // Set the color of unselected items
            onTap: _onItemTapped,
            elevation: 0, // Set elevation to 0 as it's now handled by the BoxDecoration
          ),
        ),
      )
    );
  }


  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }
}
