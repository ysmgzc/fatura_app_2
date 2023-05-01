import 'package:fatura_app_2/constants.dart';
import 'package:fatura_app_2/musteri/musteriler.dart';
import 'package:fatura_app_2/navigation_bar.dart';
import 'package:fatura_app_2/satislar/faturalar.dart';
import 'package:fatura_app_2/satislar/irsaliyeler.dart';
import 'package:fatura_app_2/satislar/perakende_satis.dart';
import 'package:fatura_app_2/satislar/siparisler.dart';
import 'package:flutter/material.dart';
import 'package:flutter_speed_dial/flutter_speed_dial.dart';

class SatislarScreen extends StatefulWidget {
  const SatislarScreen({super.key});

  @override
  State<SatislarScreen> createState() => _SatislarScreenState();
}

class _SatislarScreenState extends State<SatislarScreen> {
  final isDialOpen = ValueNotifier(false);
  @override
  Widget build(BuildContext context) => WillPopScope(//geri tusuna basılınca speedbar kapatır sayfadan cikis olmaz
    onWillPop: ()async{
      if (isDialOpen.value) {
        isDialOpen.value=false;
        return false;
      } else {
        return true;
      }
    }, 
    child: DefaultTabController(
      length: 3,
      child: Scaffold(
        drawer: const NavBar(),
      //  bottomNavigationBar:const BottomNavBar(selectedMenu: MenuState.home),
        appBar: AppBar(
          backgroundColor: kAppBarColor,
          centerTitle: true,
          title:const Text(
            'Satışlar',
          ),
          bottom:const TabBar(
            indicatorColor: Colors.white,
            indicatorWeight: 5,
            tabs: [
              Tab(
                icon: Icon(Icons.add_shopping_cart),
                text: "Siparişler",
              ),
              Tab(
                icon: Icon(Icons.difference),
                text: "İrsaliyeler",
              ),
              Tab(
                icon: Icon(Icons.receipt),
                text: "Faturalar",
              ),
            ],
          ),
        ),
        body: const TabBarView(
          children: [
          SatisSiparisler(),
          SatisIrsaliyeler(),
          SatisFaturalar(),
          ],
        ),
        floatingActionButton: SpeedDial(
          animatedIcon: AnimatedIcons.add_event,
          backgroundColor: kButtonColor,
          overlayColor: kButtonColor,
          overlayOpacity: 0.4,
          spaceBetweenChildren: 12, //speedler arasındaki bosluk
          spacing: 12, //speedbar ile floatactionbuton arasındaki bosluk
          openCloseDial: isDialOpen,
          children: [
            SpeedDialChild(
              child:const Icon(Icons.add_shopping_cart),
              label: "Kayıtlı Müşteriye Satış",
              onTap: () {
                  Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) =>
                            const  MusterilerScreen(),
                        ),
                      );
              },
            ),
            SpeedDialChild(
              child:const Icon(Icons.shopping_cart),
              label: "Perakende Müşteriye Satış",
              onTap: () {
                Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) =>
                            const  Perakende(),
                        ),
                      );
              },
            ),
            SpeedDialChild(
              child:const Icon(Icons.difference),
              label: "Kayıtlı Müşteriye Sipariş",
              onTap: () {
                  Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) =>
                            const  MusterilerScreen(),
                        ),
                      );
              },
            ),
            SpeedDialChild(
              child:const Icon(Icons.receipt),
              label: "Kayıtlı Müşteriye İrsaliye",
              onTap: () {
                  Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) =>
                            const  MusterilerScreen(),
                        ),
                      );
              },
            )
          ],
        ),
      ),
  ),
  ); 
}
