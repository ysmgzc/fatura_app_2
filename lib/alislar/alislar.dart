import 'package:fatura_app_2/alislar/alis_makbuz.dart';
import 'package:fatura_app_2/alislar/alis_siparisler.dart';
import 'package:fatura_app_2/constants.dart';
import 'package:fatura_app_2/navigation_bar.dart';
import 'package:fatura_app_2/tederikci/tedarikciler.dart';
import 'package:flutter/material.dart';

import 'alis_faturalar.dart';


class AlislarScreen extends StatefulWidget {
  const AlislarScreen({super.key});

  @override
  State<AlislarScreen> createState() => _AlislarScreenState();
}

class _AlislarScreenState extends State<AlislarScreen> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        drawer: const NavBar(),
        appBar: AppBar(
          backgroundColor: kAppBarColor,
          centerTitle: true,
          title: const Text(
            'Alışlar',
          ),
          bottom: const TabBar(
            indicatorColor: Colors.white,
            indicatorWeight: 5,
            tabs: [
              Tab(
                icon: Icon(Icons.receipt),
                text: "Faturalar",
              ),
              Tab(
                icon: Icon(Icons.add_shopping_cart),
                text: "Siparişler",
              ),
               Tab(
                icon: Icon(Icons.difference),
                text: "Makbuz",
              ),
            ],
          ),
        ),
        body:const TabBarView(
          children: [ 
            AlisFaturalar(),
            AlisSiparisler(),
            AlisMakbuz(),
          ],
        ),
        floatingActionButton: FloatingActionButton(
          backgroundColor: kButtonColor,
          child: const Icon(Icons.add),
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => const TedarikcilerScreen(),
              ),
            );
          },
          //  label: Text('Ekle'),
        ),
      ),
    );
  }
}






