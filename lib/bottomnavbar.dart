// ignore_for_file: library_private_types_in_public_api

import 'package:doorbeen_init_exp/screens/exp_page.dart';
import 'package:flutter/material.dart';

class CustomBottomNavBar extends StatefulWidget {
  const CustomBottomNavBar({super.key});

  @override
  _CustomBottomNavBarState createState() => _CustomBottomNavBarState();
}

class _CustomBottomNavBarState extends State<CustomBottomNavBar> {
  int _selectedIndex = 0;
  final List<Widget> _widgetOptions = [
    const ExperiencePage(),
    const Text('Search'),
    const Text('Favorites'),
    const Text('ab'),
    const Text('bc'),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: _widgetOptions.elementAt(_selectedIndex),
      ),
      bottomNavigationBar: ClipRect(
        child: BottomAppBar(
          child: SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: <Widget>[
                _buildNavItem(Icons.home, 0),
                _buildNavItem(Icons.search, 1),
                _buildNavItem(Icons.add, 2),
                _buildNavItem(Icons.favorite, 3),
                _buildNavItem(Icons.account_circle_sharp, 4),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildNavItem(IconData icon, int index) {
    return Stack(
      children: [
        Padding(
          padding: const EdgeInsets.all(5.0),
          child: IconButton(
            icon: Icon(icon),
            color: _selectedIndex == index ? Colors.red : Colors.grey,
            onPressed: () {
              setState(() {
                _selectedIndex = index;
              });
            },
          ),
        ),
      ],
    );
  }
}

