import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:macedon/screen/home/home_screen.dart';
import 'package:macedon/screen/membership/membership_screen.dart';
import 'package:macedon/screen/sports_channel/sports_category.dart';
import 'package:macedon/static/color.dart';

import '../barcode_scanner/scanner_screen.dart';
import '../couter_screeen/counter_screen.dart';
import '../offer_screen/offer-screen.dart';
import '../profile/profile_screen.dart';

class BottomNavigation extends StatefulWidget {
  Widget child;
  int index;
  BottomNavigation({
    super.key,
    required this.child,
    required this.index,
  });
  @override
  _BottomNavigationState createState() => _BottomNavigationState();
}

class _BottomNavigationState extends State<BottomNavigation> {
  int _selectedIndex = 0;

  // List of widget options to display based on the selected index
  static List<Widget> _widgetOptions = <Widget>[
    HomeScreen(),
    MemebershipScreen(),
    // GymListItem(),
    ScannerScreen(),
    OfferScreen(),
    ProfileScreen(),
  ];

  // Function to handle bottom navigation bar tap
  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        // child: _widgetOptions.elementAt(_selectedIndex),
        child: widget.child,
      ),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        unselectedItemColor: Colo.black,
        showUnselectedLabels: true,
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.workspace_premium_outlined),
            label: 'Membership',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.qr_code_scanner_outlined),
            label: 'Scan',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.percent_outlined),
            label: 'offer',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.account_circle_outlined),
            label: 'Profile',
          ),
        ],
        currentIndex: widget.index,
        selectedItemColor: Colors.blue,
        // onTap: _onItemTapped,
        onTap: (index) {
          switch (index) {
            case 0:
              context.go('/home', extra: {'id': "0"});
              break;
            case 1:
              context.go('/membership', extra: {'id': "1"});
              break;
            case 2:
              context.push('/scanner', extra: {'id': "2"});
              break;
            case 3:
              context.go('/offer', extra: {'id': "3"});
              break;
            case 4:
              context.go('/profile', extra: {'id': "4"});
              break;
            default:
              context.go('/home', extra: {'id': "5"});
              break;
          }
          // setState(() {
          //   _selectedIndex = index;
          // });
        },
      ),
    );
  }
}
