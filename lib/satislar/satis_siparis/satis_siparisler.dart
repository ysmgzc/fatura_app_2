import 'package:fatura_app_2/constants.dart';
import 'package:fatura_app_2/navigation_bar.dart';
import 'package:fatura_app_2/satislar/satis_siparis/satis_perakende_siparis.dart';
import 'package:fatura_app_2/satislar/satis_siparis/satis_toptan_siparis.dart';
import 'package:fatura_app_2/search_field.dart';
import 'package:flutter/material.dart';
import 'package:flutter_speed_dial/flutter_speed_dial.dart';

class SatisSiparislerScreen extends StatefulWidget {
  const SatisSiparislerScreen({super.key});

  @override
  State<SatisSiparislerScreen> createState() => _SatisSiparislerScreenState();
}

class _SatisSiparislerScreenState extends State<SatisSiparislerScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer:const NavBar(),
      //bottomNavigationBar:const BottomNavBar(selectedMenu: MenuState.home),
      appBar: AppBar(
        backgroundColor: kAppBarColor,
        centerTitle: true,
        title:const Text(
          'Siparişler',
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
            label: 'Toptan Sipariş (KDV Hariç)',
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const SatisToptanSiparisEkle(),
                ),
              );
            },
          ),
          SpeedDialChild(
            child: const Icon(Icons.add),
            label: 'Perakende Sipariş (KDV Dahil)',
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const SatisPerakendeSiparisEkle(),
                ),
              );
            },
          ),
        ],
      ),
    );
  }
}
