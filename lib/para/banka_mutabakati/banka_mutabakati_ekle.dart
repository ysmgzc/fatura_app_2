import 'package:fatura_app_2/constants.dart';
import 'package:fatura_app_2/navigation_bar.dart';
import 'package:flutter/material.dart';

class BankaMutabakatiEkle extends StatefulWidget {
  const BankaMutabakatiEkle({Key? key}) : super(key: key);

  @override
  State<BankaMutabakatiEkle> createState() => _BankaMutabakatiEkleState();
}

class _BankaMutabakatiEkleState extends State<BankaMutabakatiEkle> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: const NavBar(),
      appBar: AppBar(
        backgroundColor: kAppBarColor,
        centerTitle: true,
        title: const Text(
          'Banka Mutabakatı Ekle',
        ),
      ),
      body: Column(
        children: [
          SizedBox(
            height: MediaQuery.of(context).size.height * 0.02,
          ),
        ],
      ),
     
    );
  }
}
