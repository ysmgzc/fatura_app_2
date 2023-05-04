import 'package:fatura_app_2/alislar/alis_siparisler/alis_siparis_ekle.dart';
import 'package:fatura_app_2/constants.dart';
import 'package:fatura_app_2/navigation_bar.dart';
import 'package:fatura_app_2/search_field.dart';
import 'package:flutter/material.dart';

class AlisSiparislerScreen extends StatefulWidget {
  const AlisSiparislerScreen({super.key});

  @override
  State<AlisSiparislerScreen> createState() => _AlisSiparislerScreenState();
}

class _AlisSiparislerScreenState extends State<AlisSiparislerScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer:const NavBar(),
      //bottomNavigationBar:const BottomNavBar(selectedMenu: MenuState.home),
      appBar: AppBar(
        backgroundColor: kAppBarColor,
        centerTitle: true,
        title:const Text(
          'Alış Siparişleri',
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
     floatingActionButton: FloatingActionButton(
  backgroundColor: kButtonColor,
  onPressed: () {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => const AlisSiparisEkle(),
      ),
    );
  }, 
  shape: const StadiumBorder(side: BorderSide(color: kButtonColor, width: 3)),
  child:const Icon(Icons.add),
 
),

    );
  }
}
