import 'package:fatura_app_2/constants.dart';
import 'package:fatura_app_2/navigation_bar.dart';
import 'package:flutter/material.dart';


class BildirimlerScreen extends StatelessWidget {
  const BildirimlerScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      drawer: const NavBar(),
      appBar: AppBar(
        backgroundColor: kAppBarColor,
        centerTitle: true,
        title: const Text(
          'bildirimler',
        ),
      ),
      body: Container(),
    );
  }
}

