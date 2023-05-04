import 'package:fatura_app_2/constants.dart';
import 'package:fatura_app_2/navigation_bar.dart';
import 'package:fatura_app_2/search_field.dart';
import 'package:flutter/material.dart';

class NakitDurumuScreen extends StatefulWidget {
  const NakitDurumuScreen({Key? key}) : super(key: key);

  @override
  State<NakitDurumuScreen> createState() => _NakitDurumuScreenState();
}

class _NakitDurumuScreenState extends State<NakitDurumuScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: const NavBar(),
      appBar: AppBar(
        backgroundColor: kAppBarColor,
        centerTitle: true,
        title: const Text(
          'Nakit Durumu',
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
