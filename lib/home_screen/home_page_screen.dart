import 'package:fatura_app_2/alislar/alis_siparisler.dart';
import 'package:fatura_app_2/alislar/alislar.dart';
import 'package:fatura_app_2/constants.dart';
import 'package:fatura_app_2/home_screen/genel_durum.dart';
import 'package:fatura_app_2/masraflar/masraflar.dart';
import 'package:fatura_app_2/navigation_bar.dart';
import 'package:fatura_app_2/raporlar/raporlar.dart';
import 'package:fatura_app_2/satislar/satis_siparisler.dart';
import 'package:fatura_app_2/satislar/satislar.dart';
import 'package:fatura_app_2/stok/stok.dart';
import 'package:flutter/material.dart';

class HomePageScreen extends StatelessWidget {
  const HomePageScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white38,
      drawer: const NavBar(),
      appBar: AppBar(
        backgroundColor: kAppBarColor,
        centerTitle: true,
        title: const Text("E-Fatura"),
      ),
      body: Container(
       padding: const EdgeInsets.only(top: 20),
        child: GridView.count(
          crossAxisCount: 2, // 2 sütun
          crossAxisSpacing: 16, // yatay boşluk
          mainAxisSpacing: 12, // dikey boşluk
           childAspectRatio: 1.15, //aradaki mesafe
          children: [
          GestureDetector(
        onTap: () {
          Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => const GenelBakisScreen()),
          );
        },
        child: Column(
              children: [
                Container(
                  padding:const EdgeInsets.all(20),
                  height:180,
                  width: 180,
                 decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(20),
                        border: Border.all(color: Colors.grey, width: 0.25), // Kenarlık
                      ),
                 child: Image.asset('assets/images/grafikk.png'),
                 ),
                 const SizedBox(height: 5,),
                const Text("Genel Durum",
                 style: TextStyle(
                  color: kTextColor2,
                  fontSize: 15,
                  fontWeight: FontWeight.w300
                  )
                  ),
              ],
            ),
        ),
            GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) =>const SatisSiparislerScreen()),
              );
            },
            child: Column(
              children: [
                Container(
                  padding:const EdgeInsets.all(20),
                  height:180,
                  width: 180,
                 decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(20),
                        border: Border.all(color: Colors.grey, width: 0.25), 
                      ),
                 child: Image.asset('assets/images/satislar.png'),
                 ),
                 const SizedBox(height: 5,),
                const Text("Satışlar",
                 style: TextStyle(
                  color: kTextColor2,
                  fontSize: 15,
                  fontWeight: FontWeight.w300)
                  ),
              ],
            ),
              ),
           GestureDetector(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) =>const AlisSiparislerScreen()),
              );
            },
            child: Column(
              children: [
                Container(
                  padding:const EdgeInsets.all(20),
                  height:180,
                  width: 180,
                 decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(20),
                        border: Border.all(color: Colors.grey, width: 0.25), 
                      ),
                 child: Image.asset('assets/images/alislar1.png',),
                 ),
                 const SizedBox(height: 5,),
                const Text("Alışlar",
                 style: TextStyle(
                  color: kTextColor2,
                  fontSize: 15,
                  fontWeight: FontWeight.w300
                  )
                  ),
              ],
            ),
              ),
            GestureDetector(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) =>const MasraflarScreen()),
              );
            },
           child: Column(
              children: [
                Container(
                  padding:const EdgeInsets.all(20),
                  height:180,
                  width: 180,
                  decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(20),
                        border: Border.all(color: Colors.grey, width: 0.25), 
                      ),
                 child: Image.asset('assets/images/masraflar.png',),
                 ),
                 const SizedBox(height: 5,),
                const Text("Masraflar",
                 style: TextStyle(
                  color: kTextColor2,
                  fontSize: 15,
                  fontWeight: FontWeight.w300
                  )
                  ),
              ],
            ),
              ),
            GestureDetector(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const StokScreen()),
              );
            },
            child: Column(
              children: [
                Container(
                  padding:const EdgeInsets.all(20),
                  height:180,
                  width: 180,
                 decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(20),
                        border: Border.all(color: Colors.grey, width: 0.25), 
                      ),
                 child: Image.asset('assets/images/stoklar.png',),
                 ),
                 const SizedBox(height: 5,),
                const Text("Stoklar",
                 style: TextStyle(
                  color: kTextColor2,
                  fontSize: 15,
                  fontWeight: FontWeight.w300
                  )
                  ),
              ],
            ),
              ),
            GestureDetector(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) =>const RaporlarScreen()),
              );
            },
           child: Column(
              children: [
                Container(
                  padding:const EdgeInsets.all(20),
                  height:180,
                  width: 180,
                  decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(20),
                        border: Border.all(color: Colors.grey, width: 0.25), 
                      ),
                 child: Image.asset('assets/images/raporlar.png',),
                 ),
                 const SizedBox(height: 5,),
                const Text("Raporlar",
                 style: TextStyle(
                  color: kTextColor2,
                 fontSize: 15,
                  fontWeight: FontWeight.w300
                  )
                  ),
              ],
            ),
              ),
          ],
        ),
      ),
    );
  }
}
