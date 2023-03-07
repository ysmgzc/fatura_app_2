import 'package:fatura_app_2/constants.dart';
import 'package:flutter/material.dart';

import 'navigation_bar.dart';

class AppBarScreen extends StatelessWidget {
  const AppBarScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: const NavBar(),
      appBar: AppBar(
        backgroundColor: kAppBarColor,
        centerTitle: true,
        title: const Text(
          'stok durumu',
        ),
      ),
    );
  }
}
