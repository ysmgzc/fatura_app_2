import 'package:fatura_app_2/notifications.dart';
import 'package:fatura_app_2/screens/home_page_screen.dart';
import 'package:fatura_app_2/screens/profile_screen.dart';
import 'package:flutter/material.dart';

class BottomNavBar extends StatefulWidget {
  const BottomNavBar({super.key});

  @override
  State<BottomNavBar> createState() => _BottomNavBarState();
}

class _BottomNavBarState extends State<BottomNavBar> {
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
        unselectedFontSize: 14,
        selectedFontSize: 15,
        items: const [
        BottomNavigationBarItem(
            icon: Icon(
              Icons.home,
            ),
            label: 'Ana Sayfa'),
        BottomNavigationBarItem(
            icon: Icon(
              Icons.notification_add,
            ),
            label: 'Bildirimler'),
        BottomNavigationBarItem(
            icon: Icon(
              Icons.person,
            ),
            label: 'Profil',
            ),
      ],
      currentIndex: selectedindex,
       onTap: itemtab ,
      ),
    );
  }
}