import 'package:fatura_app_2/constants.dart';
import 'package:fatura_app_2/navigation_bar.dart';
import 'package:fatura_app_2/stok/stok_durumu.dart';
import 'package:flutter/material.dart';

class StokScreen extends StatefulWidget {
  const StokScreen({super.key});

  @override
  State<StokScreen> createState() => _StokScreenState();
}

class _StokScreenState extends State<StokScreen> {
  @override
  Widget build(BuildContext context) {
        Size size = MediaQuery.of(context).size;
    return Scaffold(
      drawer: const NavBar(),
      appBar: AppBar(
        backgroundColor: kAppBarColor,
        centerTitle: true,
        title: const Text(
          'stok',
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
                "Depo Durumu",
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: kTextColor2,
                  fontWeight: FontWeight.bold,
                  fontSize: size.height * 0.032,
                ),
                          ),
              ),
               SizedBox(
              height: size.height * 0.02,
               ),
               Container(
                color: Colors.white,
                 width:  MediaQuery.of(context).size.width*3,
                 child: Column(
                   children: [
                      GestureDetector(
                      onTap: (){
                        Navigator.of(context).push(
                            MaterialPageRoute(builder: (context) => const StokDurumu()));
                      },
                  child: const ListTile(
                      leading: Icon(Icons.warehouse, color: kIconColor2),
                      
                      title: Text(
                        "Ana Depo Durumu",
                      ),
                      trailing:Icon(Icons.navigate_next, color: kIconColor2, size: 30.0)
                  ))
                   ],
                 ),
                           
               )
            ]
         ),
      ),
    ),);
  }
}