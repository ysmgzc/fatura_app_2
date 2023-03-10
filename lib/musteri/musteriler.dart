import 'package:fatura_app_2/bottom_nav_bar.dart';
import 'package:fatura_app_2/constants.dart';
import 'package:fatura_app_2/navigation_bar.dart';
import 'package:fatura_app_2/search_field.dart';
import 'package:flutter/material.dart';

import '../enum.dart';
import 'musteri_ekle.dart';

class MusterilerScreen extends StatefulWidget {
  const MusterilerScreen({super.key});

  @override
  State<MusterilerScreen> createState() => _MusterilerScreenState();
}

class _MusterilerScreenState extends State<MusterilerScreen> {
  var index = 1;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: const NavBar(),
      bottomNavigationBar:const BottomNavBar(selectedMenu: MenuState.home),
      appBar: AppBar(
        backgroundColor: kAppBarColor,
        centerTitle: true,
        title: const Text(
          'müşteriler',
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
      floatingActionButton: FloatingActionButton.extended(
        backgroundColor: kButtonColor,
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => const MusteriEkle(),
            ),
          );
        },
        icon: const Icon(Icons.add),
        label: const Text('Ekle'),
        shape: const StadiumBorder(side: BorderSide(color: kButtonColor, width: 3)),
      ),
    );
  }
}
