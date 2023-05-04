import 'package:fatura_app_2/constants.dart';
import 'package:fatura_app_2/navigation_bar.dart';
import 'package:fatura_app_2/para/kasalar/kasa_ekle.dart';
import 'package:fatura_app_2/search_field.dart';
import 'package:flutter/material.dart';

class KasalarScreen extends StatefulWidget {
  const KasalarScreen({Key? key}) : super(key: key);

  @override
  State<KasalarScreen> createState() => _KasalarScreenState();
}

class _KasalarScreenState extends State<KasalarScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: const NavBar(),
      appBar: AppBar(
        backgroundColor: kAppBarColor,
        centerTitle: true,
        title: const Text(
          'Kasalar',
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
        builder: (context) => const KasaEkle(),
      ),
    );
  }, 
  shape: const StadiumBorder(side: BorderSide(color: kButtonColor, width: 3)),
  child:const Icon(Icons.add),
 
),
    );
  }
}
