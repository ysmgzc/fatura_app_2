import 'package:fatura_app_2/constants.dart';
import 'package:fatura_app_2/navigation_bar.dart';
import 'package:fatura_app_2/search_field.dart';
import 'package:fatura_app_2/stok_hareketleri/stok_cikisi.dart';
import 'package:fatura_app_2/stok_hareketleri/stok_girisi.dart';
import 'package:flutter/material.dart';
import 'package:flutter_speed_dial/flutter_speed_dial.dart';

class StokHareketleriScreen extends StatefulWidget {
  const StokHareketleriScreen({Key? key}) : super(key: key);

  @override
  State<StokHareketleriScreen> createState() => _StokHareketleriScreenState();
}

class _StokHareketleriScreenState extends State<StokHareketleriScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: const NavBar(),
      appBar: AppBar(
        backgroundColor: kAppBarColor,
        centerTitle: true,
        title: const Text(
          'Stok Hareketleri',
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
            label: 'Stok Çıkışı',
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const StokCikisiEkle(),
                ),
              );
            },
          ),
           SpeedDialChild(
            child: const Icon(Icons.add),
            label: 'Stok Girişi',
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const StokGirisiEkle(),
                ),
              );
            },
          ),
        ],
      ),
    );
  }
}
