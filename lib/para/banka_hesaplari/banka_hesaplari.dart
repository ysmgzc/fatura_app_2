import 'package:fatura_app_2/constants.dart';
import 'package:fatura_app_2/navigation_bar.dart';
import 'package:fatura_app_2/para/banka_hesaplari/banka_hesaplari_ekle.dart';
import 'package:fatura_app_2/search_field.dart';
import 'package:flutter/material.dart';

class BankaHesaplariScreen extends StatefulWidget {
  const BankaHesaplariScreen({Key? key}) : super(key: key);

  @override
  State<BankaHesaplariScreen> createState() => _BankaHesaplariScreenState();
}

class _BankaHesaplariScreenState extends State<BankaHesaplariScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: const NavBar(),
      appBar: AppBar(
        backgroundColor: kAppBarColor,
        centerTitle: true,
        title: const Text(
          'Bankalar',
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
        builder: (context) => const BankaHesabiEkle(),
      ),
    );
  }, 
  shape: const StadiumBorder(side: BorderSide(color: kButtonColor, width: 3)),
  child:const Icon(Icons.add),
 
),
    );
  }
}
