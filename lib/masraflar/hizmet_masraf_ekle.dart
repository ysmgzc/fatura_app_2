import 'package:fatura_app_2/constants.dart';
import 'package:fatura_app_2/navigation_bar.dart';
import 'package:fatura_app_2/search_field.dart';
import 'package:flutter/material.dart';

class HizmetMasrafEkle extends StatefulWidget {
  const HizmetMasrafEkle({Key? key}) : super(key: key);

  @override
  State<HizmetMasrafEkle> createState() => _HizmetMasrafEkleState();
}

class _HizmetMasrafEkleState extends State<HizmetMasrafEkle> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: const NavBar(),
      appBar: AppBar(
        backgroundColor: kAppBarColor,
        centerTitle: true,
        title: const Text(
          'Hizmet & Masraf',
        ),
      ),
      body: Column(
        children: [
          SizedBox(
            height: MediaQuery.of(context).size.height * 0.02,
          ),
          const SearchField(),
        ],
      ),
    );
  }
}
