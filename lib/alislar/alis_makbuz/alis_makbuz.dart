import 'package:fatura_app_2/alislar/alis_makbuz/alis_makbuz_ekle.dart';
import 'package:fatura_app_2/constants.dart';
import 'package:fatura_app_2/navigation_bar.dart';
import 'package:fatura_app_2/search_field.dart';
import 'package:flutter/material.dart';

class AlisMakbuzScreen extends StatefulWidget {
  const AlisMakbuzScreen({super.key});

  @override
  State<AlisMakbuzScreen> createState() => _AlisMakbuzScreenState();
}

class _AlisMakbuzScreenState extends State<AlisMakbuzScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer:const NavBar(),
      //bottomNavigationBar:const BottomNavBar(selectedMenu: MenuState.home),
      appBar: AppBar(
        backgroundColor: kAppBarColor,
        centerTitle: true,
        title:const Text(
          'Alınan Serbest Meslek Makbuzu',
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
        builder: (context) => const AlisMakbuzEkle(),
      ),
    );
  }, 
  shape: const StadiumBorder(side: BorderSide(color: kButtonColor, width: 3)),
  child:const Icon(Icons.add),
 
),
    );
  }
}
