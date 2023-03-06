import 'package:fatura_app_2/constants.dart';
import 'package:fatura_app_2/navigation_bar.dart';
import 'package:fatura_app_2/raporlar/r_alislar.dart';
import 'package:fatura_app_2/raporlar/r_depo_stoklari.dart';
import 'package:fatura_app_2/raporlar/r_hesap_harekerleri.dart';
import 'package:fatura_app_2/raporlar/r_iadeler.dart';
import 'package:fatura_app_2/raporlar/r_masraflar.dart';
import 'package:fatura_app_2/raporlar/r_satislar.dart';
import 'package:fatura_app_2/raporlar/r_stok_hareketleri.dart';
import 'package:fatura_app_2/stok/stok_durumu.dart';
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
             
               Container(
                color: Colors.white,
                 width:  MediaQuery.of(context).size.width*3,
                 child: Column(
                   children: [
                      GestureDetector(
                      onTap: (){
                        Navigator.of(context).push(
                            MaterialPageRoute(builder: (context) => const AlisRaporu()));
                      },
                  child: ListTile(
                      leading: Container(
                        child: Icon(Icons.add_shopping_cart, color: Colors.black),
                      ),
                      title: Text(
                        "Alış Raporu",
                      ),
                      trailing:Icon(Icons.navigate_next, color: Colors.black, size: 30.0)
                  ))
                   ],
                 ),
                           
               ),
               Divider(),
                Container(
                color: Colors.white,
                 width:  MediaQuery.of(context).size.width*3,
                 child: Column(
                   children: [
                      GestureDetector(
                      onTap: (){
                        Navigator.of(context).push(
                            MaterialPageRoute(builder: (context) => const SatisRaporu()));
                      },
                  child: ListTile(
                      leading: Container(
                        child: Icon(Icons.shopping_cart, color: Colors.black),
                      ),
                      title: Text(
                        "Satış Raporu",
                      ),
                      trailing:Icon(Icons.navigate_next, color: Colors.black, size: 30.0)
                  ))
                   ],
                 ),
                           
               ),
                Divider(),
                Container(
                color: Colors.white,
                 width:  MediaQuery.of(context).size.width*3,
                 child: Column(
                   children: [
                      GestureDetector(
                      onTap: (){
                        Navigator.of(context).push(
                            MaterialPageRoute(builder: (context) => const MasrafRaporu()));
                      },
                  child: ListTile(
                      leading: Container(
                        child: Icon(Icons.account_balance_wallet, color: Colors.black),
                      ),
                      title: Text(
                        "Masraflar",
                      ),
                      trailing:Icon(Icons.navigate_next, color: Colors.black, size: 30.0)
                  ))
                   ],
                 ),
                           
               ),
                Divider(),
                Container(
                color: Colors.white,
                 width:  MediaQuery.of(context).size.width*3,
                 child: Column(
                   children: [
                      GestureDetector(
                      onTap: (){
                        Navigator.of(context).push(
                            MaterialPageRoute(builder: (context) => const IadeRaporu()));
                      },
                  child: ListTile(
                      leading: Container(
                        child: Icon(Icons.recycling, color: Colors.black),
                      ),
                      title: Text(
                        "İadeler",
                      ),
                      trailing:Icon(Icons.navigate_next, color: Colors.black, size: 30.0)
                  ))
                   ],
                 ),
                           
               ),
                Divider(),
                Container(
                color: Colors.white,
                 width:  MediaQuery.of(context).size.width*3,
                 child: Column(
                   children: [
                      GestureDetector(
                      onTap: (){
                        Navigator.of(context).push(
                            MaterialPageRoute(builder: (context) => const DepoStokRaporu()));
                      },
                  child: ListTile(
                      leading: Container(
                        child: Icon(Icons.warehouse, color: Colors.black),
                      ),
                      title: Text(
                        "Depo Stokları",
                      ),
                      trailing:Icon(Icons.navigate_next, color: Colors.black, size: 30.0)
                  ))
                   ],
                 ),
                           
               ),
                Divider(),
                Container(
                color: Colors.white,
                 width:  MediaQuery.of(context).size.width*3,
                 child: Column(
                   children: [
                      GestureDetector(
                      onTap: (){
                        Navigator.of(context).push(
                            MaterialPageRoute(builder: (context) => const StokHareketleriRaporu()));
                      },
                  child: ListTile(
                      leading: Container(
                        child: Icon(Icons.warehouse, color: Colors.black),
                      ),
                      title: Text(
                        "Stok Hareketleri",
                      ),
                      trailing:Icon(Icons.navigate_next, color: Colors.black, size: 30.0)
                  ))
                   ],
                 ),
                           
               ),
                Divider(),
                Container(
                color: Colors.white,
                 width:  MediaQuery.of(context).size.width*3,
                 child: Column(
                   children: [
                      GestureDetector(
                      onTap: (){
                        Navigator.of(context).push(
                            MaterialPageRoute(builder: (context) => const HesapHareketleri()));
                      },
                  child: ListTile(
                      leading: Container(
                        child: Icon(Icons.person, color: Colors.black),
                      ),
                      title: Text(
                        "Hesap Hareketleri",
                      ),
                      trailing:Icon(Icons.navigate_next, color: Colors.black, size: 30.0)
                  ))
                   ],
                 ),                       
               ),
              
            ]
         ),
      ),
    ),);
  }
}