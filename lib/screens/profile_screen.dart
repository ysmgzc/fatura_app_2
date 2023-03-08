import 'package:fatura_app_2/constants.dart';
import 'package:fatura_app_2/enum.dart';
import 'package:fatura_app_2/navigation_bar.dart';
import 'package:flutter/material.dart';

import '../bottom_nav_bar.dart';


class ProfileScreen extends StatefulWidget {
  const ProfileScreen({super.key});

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: const NavBar(),
      bottomNavigationBar:const BottomNavBar(selectedMenu: MenuState.home),
      appBar: AppBar(
        backgroundColor: kAppBarColor,
        centerTitle: true,
        title: const Text(
          'Profil',
        ),
      ),
      body:Column(),
    );
  }
}
