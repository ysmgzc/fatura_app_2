import 'package:fatura_app_2/constants.dart';
import 'package:fatura_app_2/navigation_bar.dart';
import 'package:flutter/material.dart';


class HesapHareketleri extends StatefulWidget {
  const HesapHareketleri({super.key});

  @override
  State<HesapHareketleri> createState() => _HesapHareketleriState();
}

class _HesapHareketleriState extends State<HesapHareketleri> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: const NavBar(),
      appBar: AppBar(
        backgroundColor: kAppBarColor,
        centerTitle: true,
        title: const Text(
          'Hesap Hareketleri',
        ),
      ),
      body:Column(),
    );
  }
}
