import 'package:fatura_app_2/constants.dart';
import 'package:fatura_app_2/navigation_bar.dart';
import 'package:fatura_app_2/search_field.dart';
import 'package:flutter/material.dart';

class SatisPerakendeEkle extends StatefulWidget {
  const SatisPerakendeEkle({Key? key}) : super(key: key);

  @override
  State<SatisPerakendeEkle> createState() => _SatisPerakendeEkleState();
}

class _SatisPerakendeEkleState extends State<SatisPerakendeEkle> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: const NavBar(),
      appBar: AppBar(
        backgroundColor: kAppBarColor,
        centerTitle: true,
        title: const Text(
          'Perakende Satış Faturası',
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
