import 'package:fatura_app_2/constants.dart';
import 'package:fatura_app_2/navigation_bar.dart';
import 'package:fatura_app_2/raporlar/r_alislar.dart';
import 'package:fatura_app_2/raporlar/r_depo_stoklari.dart';
import 'package:fatura_app_2/raporlar/r_hesap_harekerleri.dart';
import 'package:fatura_app_2/raporlar/r_iadeler.dart';
import 'package:fatura_app_2/raporlar/r_masraflar.dart';
import 'package:fatura_app_2/raporlar/r_satislar.dart';
import 'package:fatura_app_2/raporlar/r_stok_hareketleri.dart';
import 'package:flutter/material.dart';

class RaporlarScreen extends StatefulWidget {
  const RaporlarScreen({super.key});

  @override
  State<RaporlarScreen> createState() => _RaporlarScreenState();
}

class _RaporlarScreenState extends State<RaporlarScreen> {
  @override
  Widget build(BuildContext context) {
        Size size = MediaQuery.of(context).size;
    return Scaffold(
      drawer: const NavBar(),
      appBar: AppBar(
        backgroundColor: kAppBarColor,
        centerTitle: true,
        title: const Text(
          'Raporlar',
        ),
      ),
      
      body: SingleChildScrollView(
         child: Container(
            decoration: BoxDecoration(borderRadius: BorderRadius.circular(20),color: Colors.white),
            child: Column(  
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(
                height: size.height * 0.03,      
              ),
             
               raporlarcontainer(Icons.add_shopping_cart,"Alış Raporu"),
                const Divider(),
               raporlarcontainer(Icons.shopping_cart,"Satış Raporu"),
                const Divider(),
               raporlarcontainer(Icons.account_balance_wallet,"Masraflar"),
                const Divider(),
               raporlarcontainer(Icons.recycling, "İadeler"),
                const Divider(),
               raporlarcontainer(Icons.warehouse,"Depo Stokları"),
                const Divider(),
               raporlarcontainer(Icons.warehouse,"Stok Hareketleri"),
                const Divider(),
               raporlarcontainer(Icons.person,"Hesap Hareketleri"),
            ]
         ),
      ),
    ),);
  }

  Container raporlarcontainer(IconData icon, String text) {
    return Container(
              color: Colors.white,
               width:  MediaQuery.of(context).size.width*3,
               child: Column(
                 children: [
                    GestureDetector(
                    onTap: (){
                      Navigator.of(context).push(
                          MaterialPageRoute(builder: (context) => const AlisRaporu()));
                    },
                child:  ListTile(
                    leading: Icon(icon, color: kIconColor2),
                    
                    title: Text(
                      text,
                    ),
                    trailing:Icon(Icons.navigate_next, color: kIconColor2, size: 30.0)
                ))
                 ],
               ),
                         
             );
  }
}