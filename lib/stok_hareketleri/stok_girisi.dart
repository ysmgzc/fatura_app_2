import 'package:fatura_app_2/constants.dart';
import 'package:fatura_app_2/navigation_bar.dart';
import 'package:fatura_app_2/search_field.dart';
import 'package:flutter/material.dart';

class StokGirisiEkle extends StatefulWidget {
  const StokGirisiEkle({Key? key}) : super(key: key);

  @override
  State<StokGirisiEkle> createState() => _StokGirisiEkleState();
}

class _StokGirisiEkleState extends State<StokGirisiEkle> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: const NavBar(),
      appBar: AppBar(
        backgroundColor: kAppBarColor,
        centerTitle: true,
        title: const Text(
          'Stok Girişi',
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
