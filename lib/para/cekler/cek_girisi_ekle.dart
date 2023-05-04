import 'package:fatura_app_2/constants.dart';
import 'package:fatura_app_2/navigation_bar.dart';
import 'package:flutter/material.dart';

class CekGirisiEkle extends StatefulWidget {
  const CekGirisiEkle({Key? key}) : super(key: key);

  @override
  State<CekGirisiEkle> createState() => _CekGirisiEkleState();
}

class _CekGirisiEkleState extends State<CekGirisiEkle> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: const NavBar(),
      appBar: AppBar(
        backgroundColor: kAppBarColor,
        centerTitle: true,
        title: const Text(
          'Çek Girişi',
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
