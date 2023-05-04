import 'package:fatura_app_2/constants.dart';
import 'package:fatura_app_2/navigation_bar.dart';
import 'package:fatura_app_2/satislar/satis_makbuz/satis_makbuz_ekle.dart';
import 'package:fatura_app_2/search_field.dart';
import 'package:flutter/material.dart';

class SatisMakbuzScreen extends StatefulWidget {
  const SatisMakbuzScreen({super.key});

  @override
  State<SatisMakbuzScreen> createState() => _SatisMakbuzScreenState();
}

class _SatisMakbuzScreenState extends State<SatisMakbuzScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer:const NavBar(),
      //bottomNavigationBar:const BottomNavBar(selectedMenu: MenuState.home),
      appBar: AppBar(
        backgroundColor: kAppBarColor,
        centerTitle: true,
        title:const Text(
          'Verilen Serbest Meslek Makbuzu',
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
        builder: (context) => const SatisMakbuzEkle(),
      ),
    );
  }, 
  shape: const StadiumBorder(side: BorderSide(color: kButtonColor, width: 3)),
  child:const Icon(Icons.add),
 
),
    );
  }
}
