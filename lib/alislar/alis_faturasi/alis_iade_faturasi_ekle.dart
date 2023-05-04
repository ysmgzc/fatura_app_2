import 'package:fatura_app_2/constants.dart';
import 'package:fatura_app_2/navigation_bar.dart';
import 'package:fatura_app_2/search_field.dart';
import 'package:flutter/material.dart';

class AlisIadeFaturasiEkle extends StatefulWidget {
  const AlisIadeFaturasiEkle({Key? key}) : super(key: key);

  @override
  State<AlisIadeFaturasiEkle> createState() => _AlisIadeFaturasiEkleState();
}

class _AlisIadeFaturasiEkleState extends State<AlisIadeFaturasiEkle> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: const NavBar(),
      appBar: AppBar(
        backgroundColor: kAppBarColor,
        centerTitle: true,
        title: const Text(
          'İade Faturası',
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
