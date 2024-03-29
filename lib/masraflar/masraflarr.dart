/*import 'package:fatura_app_2/constants.dart';
import 'package:fatura_app_2/masraflar/hizmet_masraf_ekle.dart';
import 'package:fatura_app_2/masraflar/manuel_masraf_girisi.dart';
import 'package:fatura_app_2/navigation_bar.dart';
import 'package:fatura_app_2/search_field.dart';
import 'package:flutter/material.dart';
import 'package:flutter_speed_dial/flutter_speed_dial.dart';

class MasraflarScreen extends StatefulWidget {
  const MasraflarScreen({super.key});

  @override
  State<MasraflarScreen> createState() => _MasraflarScreenState();
}

class _MasraflarScreenState extends State<MasraflarScreen> {
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
            'Masraflar',
          ),
          bottom:const TabBar(
            indicatorColor: Colors.white,
            indicatorWeight: 5,
            tabs: [
              Tab(
                icon: Icon(Icons.add_shopping_cart),
                text: "Gecikmiş",
              ),
              Tab(
                icon: Icon(Icons.difference),
                text: "Ödenmiş",
              ),
              Tab(
                icon: Icon(Icons.receipt),
                text: "Ödenecek",
              ),
            ],
          ),
        ),
        body: const TabBarView(
          children: [
          Gecikmis(),
          Odenmis(),
          Odenecek(),
          ],
        ),
          floatingActionButton: FloatingActionButton(
  backgroundColor: kButtonColor,
  onPressed: () {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => const HizmetMasrafEkle(),
      ),
    );
  }, 
  shape: const StadiumBorder(side: BorderSide(color: kButtonColor, width: 3)),
  child:const Icon(Icons.add),
 
),
      ),
  ),
  ); 
}
class Gecikmis extends StatelessWidget {
 const Gecikmis({super.key});
  @override
  Widget build(BuildContext context) {
    return Column(
        children: [
          SizedBox(
            height: MediaQuery.of(context).size.height * 0.02,
          ),
         const SearchField(),
         const Center(
            child: Text("Gecikmiş"),
          ),
        ],
    );
  }
}
class Odenmis extends StatelessWidget {
  const Odenmis({super.key});
  @override
  Widget build(BuildContext context) {
    return Column(
        children: [
          SizedBox(
            height: MediaQuery.of(context).size.height * 0.02,
          ),
         const SearchField(),
          const Center(
            child: Text("Ödenmiş"),
          ),
        ],
    );
  }
}
class Odenecek extends StatelessWidget {
  const Odenecek({super.key});
  @override
  Widget build(BuildContext context) {
    return Column(
        children: [
          SizedBox(
            height: MediaQuery.of(context).size.height * 0.02,
          ),
         const SearchField(),
         const Center(
            child: Text("Ödenecek"),
          ),
        ],
    );
  }
}*/
