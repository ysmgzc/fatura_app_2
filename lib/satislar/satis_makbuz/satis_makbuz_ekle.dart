import 'package:fatura_app_2/constants.dart';
import 'package:fatura_app_2/navigation_bar.dart';
import 'package:fatura_app_2/search_field.dart';
import 'package:flutter/material.dart';

class SatisMakbuzEkle extends StatefulWidget {
  const SatisMakbuzEkle({Key? key}) : super(key: key);

  @override
  State<SatisMakbuzEkle> createState() => _SatisMakbuzEkleState();
}

class _SatisMakbuzEkleState extends State<SatisMakbuzEkle> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: const NavBar(),
      appBar: AppBar(
        backgroundColor: kAppBarColor,
        centerTitle: true,
        title: const Text(
          'Serbest Meslek Makbuzu',
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
