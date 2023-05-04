import 'package:fatura_app_2/alislar/alis_faturasi/alis_faturasi_ekle.dart';
import 'package:fatura_app_2/alislar/alis_faturasi/alis_iade_faturasi_ekle.dart';
import 'package:fatura_app_2/constants.dart';
import 'package:fatura_app_2/navigation_bar.dart';
import 'package:fatura_app_2/search_field.dart';
import 'package:flutter/material.dart';
import 'package:flutter_speed_dial/flutter_speed_dial.dart';

class AlisFaturalarScreen extends StatefulWidget {
  const AlisFaturalarScreen({Key? key}) : super(key: key);

  @override
  State<AlisFaturalarScreen> createState() => _AlisFaturalarScreenState();
}

class _AlisFaturalarScreenState extends State<AlisFaturalarScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: const NavBar(),
      appBar: AppBar(
        backgroundColor: kAppBarColor,
        centerTitle: true,
        title: const Text(
          'Alış Faturaları',
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
      floatingActionButton: SpeedDial(
        animatedIcon: AnimatedIcons.add_event,
        backgroundColor: kButtonColor,
        overlayColor: kButtonColor,
        overlayOpacity: 0.4,
        spaceBetweenChildren: 12,
        spacing: 12,
        children: [
          SpeedDialChild(
            child: const Icon(Icons.add),
            label: 'İade Faturası',
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const AlisIadeFaturasiEkle(),
                ),
              );
            },
          ),
          SpeedDialChild(
            child: const Icon(Icons.add),
            label: 'Alış Faturası',
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const AlisFaturasiEkle(),
                ),
              );
            },
          ),
        ],
      ),
    );
  }
}
