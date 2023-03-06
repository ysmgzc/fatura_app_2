import 'package:fatura_app_2/constants.dart';
import 'package:fatura_app_2/navigation_bar.dart';
import 'package:fatura_app_2/search_field.dart';
import 'package:flutter/material.dart';


class StokDurumu extends StatefulWidget {
  const StokDurumu({super.key});

  @override
  State<StokDurumu> createState() => _StokDurumuState();
}

class _StokDurumuState extends State<StokDurumu> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: const NavBar(),
      appBar: AppBar(
        backgroundColor: kAppBarColor,
        centerTitle: true,
        title: const Text(
          'stok durumu',
        ),
      ),
      body:Column(
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
