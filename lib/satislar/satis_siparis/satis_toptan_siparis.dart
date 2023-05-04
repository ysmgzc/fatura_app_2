import 'package:fatura_app_2/constants.dart';
import 'package:fatura_app_2/navigation_bar.dart';
import 'package:fatura_app_2/search_field.dart';
import 'package:flutter/material.dart';

class SatisToptanSiparisEkle extends StatefulWidget {
  const SatisToptanSiparisEkle({Key? key}) : super(key: key);

  @override
  State<SatisToptanSiparisEkle> createState() => _SatisToptanSiparisEkleState();
}

class _SatisToptanSiparisEkleState extends State<SatisToptanSiparisEkle> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: const NavBar(),
      appBar: AppBar(
        backgroundColor: kAppBarColor,
        centerTitle: true,
        title: const Text(
          'Sipariş(KDV Hariç)',
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
