import 'package:fatura_app_2/constants.dart';
import 'package:fatura_app_2/navigation_bar.dart';
import 'package:fatura_app_2/search_field.dart';
import 'package:flutter/material.dart';

class AlisFaturasiEkle extends StatefulWidget {
  const AlisFaturasiEkle({Key? key}) : super(key: key);

  @override
  State<AlisFaturasiEkle> createState() => _AlisFaturasiEkleState();
}

class _AlisFaturasiEkleState extends State<AlisFaturasiEkle> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: const NavBar(),
      appBar: AppBar(
        backgroundColor: kAppBarColor,
        centerTitle: true,
        title: const Text(
          'Alış Faturası',
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
