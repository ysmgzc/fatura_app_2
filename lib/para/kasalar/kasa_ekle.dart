import 'package:fatura_app_2/constants.dart';
import 'package:fatura_app_2/navigation_bar.dart';
import 'package:fatura_app_2/search_field.dart';
import 'package:flutter/material.dart';

class KasaEkle extends StatefulWidget {
  const KasaEkle({Key? key}) : super(key: key);

  @override
  State<KasaEkle> createState() => _KasaEkleState();
}

class _KasaEkleState extends State<KasaEkle> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: const NavBar(),
      appBar: AppBar(
        backgroundColor: kAppBarColor,
        centerTitle: true,
        title: const Text(
          'Kasa Ekle',
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
