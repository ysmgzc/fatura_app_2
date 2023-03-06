import 'package:fatura_app_2/constants.dart';
import 'package:fatura_app_2/navigation_bar.dart';
import 'package:fatura_app_2/search_field.dart';
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
        drawer: NavBar(),
        appBar: AppBar(
          backgroundColor: kAppBarColor,
          centerTitle: true,
          title: Text(
            'satışlar',
          ),
          bottom: TabBar(
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
        body: TabBarView(
          children: [
            Siparisler(),
            Irsaliyeler(),
            Faturalar(),
          ],
        ),
        floatingActionButton: SpeedDial(
          animatedIcon: AnimatedIcons.add_event,
          backgroundColor: kbuttonColor,
          overlayColor: kbuttonColor,
          overlayOpacity: 0.4,
          spaceBetweenChildren: 12, //speedler arasındaki bosluk
          spacing: 12, //speedbar ile floatactionbuton arasındaki bosluk
          openCloseDial: isDialOpen,
          children: [
            SpeedDialChild(
              child: Icon(Icons.add_shopping_cart),
              label: "Kayıtlı Müşteriye Satış",
              onTap: () {},
            ),
            SpeedDialChild(
              child: Icon(Icons.shopping_cart),
              label: "Perakende Müşteriye Satış",
              onTap: () {},
            ),
            SpeedDialChild(
              child: Icon(Icons.difference),
              label: "Kayıtlı Müşteriye Sipariş",
              onTap: () {},
            ),
            SpeedDialChild(
              child: Icon(Icons.receipt),
              label: "Kayıtlı Müşteriye İrsaliye",
              onTap: () {},
            )
          ],
        ),
      ),
  ),
  ); 
}
class Siparisler extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          SizedBox(
            height: MediaQuery.of(context).size.height * 0.02,
          ),
          SearchField(),
          Center(
            child: Text("Siparişler"),
          ),
        ],
      ),
    );
  }
}
class Irsaliyeler extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          SizedBox(
            height: MediaQuery.of(context).size.height * 0.02,
          ),
          SearchField(),
          Center(
            child: Text("İrsaliyeler"),
          ),
        ],
      ),
    );
  }
}
class Faturalar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          SizedBox(
            height: MediaQuery.of(context).size.height * 0.02,
          ),
          SearchField(),
          Center(
            child: Text("Faturalar"),
          ),
        ],
      ),
    );
  }
}
