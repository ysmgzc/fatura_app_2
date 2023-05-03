import 'package:fatura_app_2/constants.dart';
import 'package:fatura_app_2/navigation_bar.dart';
import 'package:fatura_app_2/search_field.dart';
import 'package:flutter/material.dart';

class AlisFaturalarScreen extends StatefulWidget {
  const AlisFaturalarScreen({super.key});

  @override
  State<AlisFaturalarScreen> createState() => _AlisFaturalarScreenState();
}

class _AlisFaturalarScreenState extends State<AlisFaturalarScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer:const NavBar(),
      appBar: AppBar(
        backgroundColor: kAppBarColor,
        centerTitle: true,
        title:const Text(
          'Alış Faturaları',
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
    /*  floatingActionButton: FloatingActionButton.extended(
        backgroundColor: kButtonColor,
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => const UrunEkle(),
            ),
          );
        },
        icon:const Icon(Icons.add),
        label:const Text('Ekle'),
        shape: const StadiumBorder(side: BorderSide(color: kButtonColor, width: 3)),
      ),*/
    );
  }
}
