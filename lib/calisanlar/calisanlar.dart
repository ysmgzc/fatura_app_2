import 'package:fatura_app_2/calisanlar/calisan_ekle.dart';
import 'package:fatura_app_2/constants.dart';
import 'package:fatura_app_2/navigation_bar.dart';
import 'package:fatura_app_2/search_field.dart';
import 'package:flutter/material.dart';

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
      drawer: NavBar(),
      appBar: AppBar(
        backgroundColor: kAppBarColor,
        centerTitle: true,
        title: Text(
          'çalışanlar',
        ),
      ),
      
      body: Container(
        child: Column(
          children: [
            SizedBox(height: MediaQuery.of(context).size.height*0.02,),
            SearchField(
            ), 
          ],
        ),
        
      ),
      
     floatingActionButton: FloatingActionButton.extended(
        backgroundColor: kbuttonColor,
        onPressed: () {
          Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) =>
                              CalisanEkle(),
                        ),
                      );
        },
        icon: Icon(Icons.add),
        label: Text('Ekle'),
        shape:
            const StadiumBorder(side: BorderSide(color: kbuttonColor, width: 3)),
      ),
    );
  }
}