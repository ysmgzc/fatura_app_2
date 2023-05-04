import 'package:fatura_app_2/constants.dart';
import 'package:fatura_app_2/navigation_bar.dart';
import 'package:fatura_app_2/para/cekler/cek_cikisi_ekle.dart';
import 'package:fatura_app_2/para/cekler/cek_girisi_ekle.dart';
import 'package:fatura_app_2/search_field.dart';
import 'package:flutter/material.dart';
import 'package:flutter_speed_dial/flutter_speed_dial.dart';

class CeklerScreen extends StatefulWidget {
  const CeklerScreen({Key? key}) : super(key: key);

  @override
  State<CeklerScreen> createState() => _CeklerScreenState();
}

class _CeklerScreenState extends State<CeklerScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: const NavBar(),
      appBar: AppBar(
        backgroundColor: kAppBarColor,
        centerTitle: true,
        title: const Text(
          'Çekler',
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
            label: 'Çek Çıkışı',
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const CekCikisiEkle(),
                ),
              );
            },
          ),
          SpeedDialChild(
            child: const Icon(Icons.add),
            label: 'Çek Girişi',
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const CekGirisiEkle(),
                ),
              );
            },
          ),
        ],
      ),
    );
  }
}
