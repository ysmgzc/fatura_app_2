import 'package:fatura_app_2/constants.dart';
import 'package:fatura_app_2/navigation_bar.dart';
import 'package:fatura_app_2/search_field.dart';
import 'package:fatura_app_2/tederikci/tedarikci_ekle.dart';
import 'package:flutter/material.dart';

class TedarikcilerScreen extends StatefulWidget {
  const TedarikcilerScreen({super.key});

  @override
  State<TedarikcilerScreen> createState() => _TedarikcilerScreenState();
}

class _TedarikcilerScreenState extends State<TedarikcilerScreen> {
  var index = 2;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: NavBar(),
      appBar: AppBar(
        backgroundColor: kAppBarColor,
        centerTitle: true,
        title: Text(
          'tedarikçiler',
        ),
      ),
      body: Container(
        child: Column(
          children: [
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.02,
            ),
            SearchField(),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton.extended(
        backgroundColor: kbuttonColor,
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => TedarikciEkle(),
            ),
          );
        },
        icon: Icon(Icons.add),
        label: Text('Ekle'),
        shape: const StadiumBorder(side: BorderSide(color: kbuttonColor, width: 3)),
      ),
    );
  }
}
