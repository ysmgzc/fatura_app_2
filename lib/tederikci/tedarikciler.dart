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
      drawer:const NavBar(),
    //  bottomNavigationBar:const BottomNavBar(selectedMenu: MenuState.home),
      appBar: AppBar(
        backgroundColor: kAppBarColor,
        centerTitle: true,
        title:const Text(
          'tedarikçiler',
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
      floatingActionButton: FloatingActionButton.extended(
        backgroundColor: kButtonColor,
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => const TedarikciEkle(),
            ),
          );
        },
        icon:const Icon(Icons.add),
        label:const Text('Ekle'),
        shape: const StadiumBorder(side: BorderSide(color: kButtonColor, width: 3)),
      ),
    );
  }
}
