import 'package:fatura_app_2/notifications.dart';
import 'package:fatura_app_2/screens/home_page_screen.dart';
import 'package:fatura_app_2/screens/profile_screen.dart';
import 'package:flutter/material.dart';

class BottomNavBar2 extends StatefulWidget {
  const BottomNavBar2({super.key});

  @override
  State<BottomNavBar2> createState() => _BottomNavBar2State();
}

class _BottomNavBar2State extends State<BottomNavBar2> {
 int selectedindex = 0;
 final List<Widget> _widgetOptions= [
      const HomePageScreen(),
      const BildirimlerScreen(),
      const ProfileScreen(),
  ];

  void itemtab(int index) { 
    setState(() {
      selectedindex = index;
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: _widgetOptions.elementAt(selectedindex),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const [
        BottomNavigationBarItem(
            icon: Icon(
              Icons.home,
            ),
            label: 'home'),
        BottomNavigationBarItem(
            icon: Icon(
              Icons.home,
            ),
            label: 'bildirimler'),
        BottomNavigationBarItem(
            icon: Icon(
              Icons.person,
            ),
            label: 'profil'),
      ],
      currentIndex: selectedindex,
       onTap: itemtab ,
      ),
    );
  }
}