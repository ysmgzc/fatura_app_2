import 'package:fatura_app_2/bottom_nav_bar.dart';
import 'package:fatura_app_2/constants.dart';
import 'package:fatura_app_2/navigation_bar.dart';
import 'package:flutter/material.dart';
import '../enum.dart';
class HomePageScreen extends StatefulWidget {
  const HomePageScreen({super.key});

  @override
  State<HomePageScreen> createState() => _HomePageScreenState();
}

class _HomePageScreenState extends State<HomePageScreen> {
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: NavBar(),
      bottomNavigationBar: BottomNavBar(selectedMenu: MenuState.home),
      appBar: AppBar(
        backgroundColor: kAppBarColor,
        title: Text("e-fatura"),
      ),
      body: Center(),
    );
  }
}