import 'package:autopay/modules/home/screens/home_page.dart';
import 'package:autopay/modules/notif/notif_page.dart';
import 'package:autopay/modules/profile/profile_page.dart';
import 'package:autopay/modules/qrcode/qrcode_page.dart';
import 'package:autopay/modules/riwayat/riwayat_page.dart';
import 'package:autopay/shared/shared.dart';
import 'package:flutter/material.dart';

import 'bottom_navbar.dart';
import 'circular_rectangel.dart';

class MainNavigation extends StatefulWidget {
  @override
  _MainNavigationState createState() => _MainNavigationState();
}

class _MainNavigationState extends State<MainNavigation> {
  int index = 0;

  List<Widget> _page = [
    HomePage(),
    RiwayatPage(),
    NotifPage(),
    ProfilePage(),
  ];

  _onTapped(int value) {
    setState(() {
      index = value;
    });
  }

  _navigateToQrcode() {
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => QrcodePage()),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _page[index],
      bottomNavigationBar: BottomNavbar(
        centerItemText: 'Bayar',
        color: Colors.grey,
        backgroundColor: Colors.white,
        selectedColor: primaryColor['blue'],
        notchedShape: CircularOuterNotchedRectangle(),
        onTabSelected: _onTapped,
        items: [
          BottomNavbarItem(iconData: Icons.home, text: 'Home'),
          BottomNavbarItem(iconData: Icons.assignment, text: 'Riwayat'),
          BottomNavbarItem(iconData: Icons.notifications_none, text: 'Notif'),
          BottomNavbarItem(iconData: Icons.person_outline, text: 'Profile'),
        ],
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: InkWell(
        onTap: _navigateToQrcode,
        child: Container(
          width: 59,
          height: 59,
          padding: EdgeInsets.all(15),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(50),
            color: primaryColor['blue'],
          ),
          child: Image.asset(iconQrcodeButton, width: 30, height: 30),
        ),
      ),
    );
  }
}
