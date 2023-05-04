import 'package:fatura_app_2/constants.dart';
import 'package:fatura_app_2/navigation_bar.dart';
import 'package:fatura_app_2/satislar/satis_faturasi/satis_perakende_ekle.dart';
import 'package:fatura_app_2/satislar/satis_faturasi/satis_toptan_ekle.dart';
import 'package:fatura_app_2/search_field.dart';
import 'package:flutter/material.dart';
import 'package:flutter_speed_dial/flutter_speed_dial.dart';

class SatisFaturalarScreen extends StatefulWidget {
  const SatisFaturalarScreen({super.key});

  @override
  State<SatisFaturalarScreen> createState() => _SatisFaturalarScreenState();
}

class _SatisFaturalarScreenState extends State<SatisFaturalarScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer:const NavBar(),
      appBar: AppBar(
        backgroundColor: kAppBarColor,
        centerTitle: true,
        title:const Text(
          'Satış Faturaları',
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
            label: 'Toptan Satış (KDV Hariç)',
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const SatisToptanEkle(),
                ),
              );
            },
          ),
          SpeedDialChild(
            child: const Icon(Icons.add),
            label: 'Perakende Satış (KDV Dahil)',
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const SatisPerakendeEkle(),
                ),
              );
            },
          ),
        ],
      ),
    );
  }
}
