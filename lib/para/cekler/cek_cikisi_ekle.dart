import 'package:fatura_app_2/constants.dart';
import 'package:fatura_app_2/navigation_bar.dart';
import 'package:flutter/material.dart';

class CekCikisiEkle extends StatefulWidget {
  const CekCikisiEkle({Key? key}) : super(key: key);

  @override
  State<CekCikisiEkle> createState() => _CekCikisiEkleState();
}

class _CekCikisiEkleState extends State<CekCikisiEkle> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: const NavBar(),
      appBar: AppBar(
        backgroundColor: kAppBarColor,
        centerTitle: true,
        title: const Text(
          'Çek Çıkışı',
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
