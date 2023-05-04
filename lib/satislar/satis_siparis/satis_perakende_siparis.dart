import 'package:fatura_app_2/constants.dart';
import 'package:fatura_app_2/navigation_bar.dart';
import 'package:fatura_app_2/search_field.dart';
import 'package:flutter/material.dart';

class SatisPerakendeSiparisEkle extends StatefulWidget {
  const SatisPerakendeSiparisEkle({Key? key}) : super(key: key);

  @override
  State<SatisPerakendeSiparisEkle> createState() => _SatisPerakendeSiparisEkleState();
}

class _SatisPerakendeSiparisEkleState extends State<SatisPerakendeSiparisEkle> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: const NavBar(),
      appBar: AppBar(
        backgroundColor: kAppBarColor,
        centerTitle: true,
        title: const Text(
          'Sipariş(KDV Dahil)',
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
