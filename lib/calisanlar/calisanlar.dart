import 'package:fatura_app_2/bottom_nav_bar.dart';
import 'package:fatura_app_2/calisanlar/calisan_ekle.dart';
import 'package:fatura_app_2/constants.dart';
import 'package:fatura_app_2/navigation_bar.dart';
import 'package:fatura_app_2/search_field.dart';
import 'package:flutter/material.dart';

import '../enum.dart';

class CalisanlarScreen extends StatefulWidget {
  const CalisanlarScreen({super.key});

  @override
  State<CalisanlarScreen> createState() => _CalisanlarScreenState();
}

class _CalisanlarScreenState extends State<CalisanlarScreen> {
  final index =0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: const NavBar(),
      bottomNavigationBar:const BottomNavBar(selectedMenu: MenuState.home),
      appBar: AppBar(
        backgroundColor: kAppBarColor,
        centerTitle: true,
        title: const Text(
          'çalışanlar',
        ),
      ),
      
      body: Column(
          children: [
            SizedBox(height: MediaQuery.of(context).size.height*0.02,),
           const SearchField(
            ), 
          ],
        ),
      
     floatingActionButton: FloatingActionButton.extended(
        backgroundColor: kButtonColor,
        onPressed: () {
          Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) =>
                           const   CalisanEkle(),
                        ),
                      );
        },
        icon: const Icon(Icons.add),
        label: const Text('Ekle'),
      ),
    );
  }
}