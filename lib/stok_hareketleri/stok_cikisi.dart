import 'package:fatura_app_2/constants.dart';
import 'package:fatura_app_2/navigation_bar.dart';
import 'package:fatura_app_2/search_field.dart';
import 'package:flutter/material.dart';

class StokCikisiEkle extends StatefulWidget {
  const StokCikisiEkle({Key? key}) : super(key: key);

  @override
  State<StokCikisiEkle> createState() => _StokCikisiEkleState();
}

class _StokCikisiEkleState extends State<StokCikisiEkle> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: const NavBar(),
      appBar: AppBar(
        backgroundColor: kAppBarColor,
        centerTitle: true,
        title: const Text(
          'Stok Çıkışı',
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
