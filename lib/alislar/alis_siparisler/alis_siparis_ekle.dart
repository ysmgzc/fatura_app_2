import 'package:fatura_app_2/constants.dart';
import 'package:fatura_app_2/navigation_bar.dart';
import 'package:fatura_app_2/search_field.dart';
import 'package:flutter/material.dart';

class AlisSiparisEkle extends StatefulWidget {
  const AlisSiparisEkle({Key? key}) : super(key: key);

  @override
  State<AlisSiparisEkle> createState() => _AlisSiparisEkleState();
}

class _AlisSiparisEkleState extends State<AlisSiparisEkle> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: const NavBar(),
      appBar: AppBar(
        backgroundColor: kAppBarColor,
        centerTitle: true,
        title: const Text(
          'Sipariş (KDV Hariç)',
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
