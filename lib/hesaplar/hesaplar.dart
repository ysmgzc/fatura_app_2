import 'package:fatura_app_2/constants.dart';
import 'package:fatura_app_2/hesaplar/hesap_bilgileri.dart';
import 'package:fatura_app_2/navigation_bar.dart';
import 'package:flutter/material.dart';

class HesaplarScreen extends StatefulWidget {
  const HesaplarScreen({super.key});

  @override
  State<HesaplarScreen> createState() => _HesaplarScreenState();
}

class _HesaplarScreenState extends State<HesaplarScreen> {
  @override
  Widget build(BuildContext context) {
        Size size = MediaQuery.of(context).size;
    return Scaffold(
      drawer: const NavBar(),
      appBar: AppBar(
        backgroundColor: kAppBarColor,
        centerTitle: true,
        title: const Text(
          'Hesaplar',
        ),
      ),
      
      body: SingleChildScrollView(
         child: Container(
            decoration: BoxDecoration(borderRadius: BorderRadius.circular(20),
            //color: Colors.white
            ),
            child: Column(  
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(
                height: size.height * 0.03,      
              ),
              Container(
                height: 35,
                alignment: Alignment.center,
                color: Colors.grey.shade200,
                child: Text(
                "Kasa Hesapları",
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                  fontSize: size.height * 0.032,
                ),
                          ),
              ),
               Container(
                color: Colors.white,
                 width:  MediaQuery.of(context).size.width*3,
                 child: Column(
                   children: [
                      GestureDetector(
                      onTap: (){},
                  child: const ListTile(
                      leading: Icon(Icons.warehouse, color: Colors.black),
                      title: Text(
                        "TL Kasa",
                      ),
                      trailing:Icon(Icons.navigate_next, color: Colors.black, size: 30.0)
                  ))
                   ],
                 ),
                           
               ),
                Container(
                height: 35,
                alignment: Alignment.center,
                color: Colors.grey.shade200,
                child: Text(
                "Banka Hesapları",
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                  fontSize: size.height * 0.032,
                ),
                          ),
              ),
               Container(
                color: Colors.white,
                 width:  MediaQuery.of(context).size.width*3,
                 child: Column(
                   children: [
                      GestureDetector(
                      onTap: (){},
                  child: const ListTile(
                      leading: Icon(Icons.currency_lira, color: Colors.black),
                      
                      title: Text(
                        "Banka TL Hesabı",
                      ),
                      trailing:Icon(Icons.navigate_next, color: Colors.black, size: 30.0)
                  )),
                  GestureDetector(
                      onTap: (){},
                  child: const ListTile(
                      leading: Icon(Icons.attach_money, color: Colors.black),
                      
                      title: Text(
                        "Banka USD Hesabı",
                      ),
                      trailing:Icon(Icons.navigate_next, color: Colors.black, size: 30.0)
                  )),
                  GestureDetector(
                      onTap: (){},
                  child:const ListTile(
                      leading:Icon(Icons.euro, color: Colors.black),
                      
                      title: Text(
                        "Banka EUR Hesabı",
                      ),
                      trailing:Icon(Icons.navigate_next, color: Colors.black, size: 30.0)
                  )),
                   ],
                 ),
                           
               ),
                Container(
                height: 35,
                alignment: Alignment.center,
                color: Colors.grey.shade200,
                child: Text(
                "POS Hesapları",
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                  fontSize: size.height * 0.032,
                ),
                          ),
              ),
               Container(
                color: Colors.white,
                 width:  MediaQuery.of(context).size.width*3,
                 child: Column(
                   children: [
                      GestureDetector(
                      onTap: (){},
                  child: const ListTile(
                      leading: Icon(Icons.point_of_sale, color: Colors.black),
                      
                      title: Text(
                        "POS Hesabı",
                      ),
                      trailing:Icon(Icons.navigate_next, color: Colors.black, size: 30.0)
                  ))
                   ],
                 ),
                           
               ),
                Container(
                height: 35,
                alignment: Alignment.center,
                color: Colors.grey.shade200,
                child: Text(
                "Kredi Kartları",
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                  fontSize: size.height * 0.032,
                ),
                          ),
              ),
               Container(
                color: Colors.white,
                 width:  MediaQuery.of(context).size.width*3,
                 child: Column(
                   children: [
                      GestureDetector(
                      onTap: (){},
                  child: const ListTile(
                      leading: Icon(Icons.credit_card, color: Colors.black),
                      
                      title: Text(
                        "Kredi Kartım",
                      ),
                      trailing:Icon(Icons.navigate_next, color: Colors.black, size: 30.0)
                  ))
                   ],
                 ),
                           
               ),
            ]
         ),
      ),
    ),
    floatingActionButton: FloatingActionButton(
          backgroundColor: kbuttonColor,
          child: const Icon(Icons.add),
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => const HesapBilgileri(),
              ),
            );
          },
          //  label: Text('Ekle'),
        ),
    );
  }
}