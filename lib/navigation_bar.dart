import 'package:fatura_app_2/alislar/alislar.dart';
import 'package:fatura_app_2/calisanlar/calisanlar.dart';
import 'package:fatura_app_2/hesaplar/hesaplar.dart';
import 'package:fatura_app_2/masraflar/masraflar.dart';
import 'package:fatura_app_2/musteri/musteriler.dart';
import 'package:fatura_app_2/notifications.dart';
import 'package:fatura_app_2/raporlar/raporlar.dart';
import 'package:fatura_app_2/satislar/satislar.dart';
import 'package:fatura_app_2/screens/login_screen.dart';
import 'package:fatura_app_2/stok/stok.dart';
import 'package:fatura_app_2/tederikci/tedarikciler.dart';
import 'package:fatura_app_2/urunler/urunler_screen.dart';
import 'package:flutter/material.dart';

import 'constants.dart';

class NavBar extends StatelessWidget {
  const NavBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: [
          const UserAccountsDrawerHeader(
            accountName: Text('yeşim'), 
            accountEmail: Text('gezici267@gmail.com'),
            currentAccountPicture:  CircleAvatar(
                  radius: 30,
                  backgroundImage: AssetImage("assets/images/camera.png"),
                ),
                decoration: BoxDecoration(
                  image: DecorationImage(                   
                            image: AssetImage(
                              'assets/images/drawer.png',
                            ),
                            fit: BoxFit.cover,
                            
                      )
                ) ,
            ),
          ListTile(
            leading: const Icon(Icons.groups, color: kDrawerIconColor),
            title: const Text('Müşteriler'),
            onTap: () {
              Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) =>
                           const   MusterilerScreen(),
                        ),
                      );
            },
          ),
           ListTile(
            leading:const Icon(Icons.local_shipping,color: kDrawerIconColor),
            title:const Text('Tedarikçiler'),
            onTap: () {
              Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) =>
                           const   TedarikcilerScreen(),
                        ),
                      );
            },
          ),
           ListTile(
            leading:const Icon(Icons.shopping_basket,color: kDrawerIconColor),
            title:const Text('Ürünler'),
            onTap: () {
              Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) =>
                            const  UrunlerScreen(),
                        ),
                      );
            },
          ),
          ListTile(
            leading:const Icon(Icons.add_shopping_cart,color: kDrawerIconColor),
            title:const Text('Alışlar'),
            onTap: () {
              Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) =>
                            const  AlislarScreen(),
                        ),
                      );
            },
          ),
          ListTile(
            leading:const Icon(Icons.shopping_cart,color: kDrawerIconColor),
            title:const Text('Satışlar'),
            onTap: () {
              Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) =>
                           const   SatislarScreen(),
                        ),
                      );
            },
          ),
          ListTile(
            leading:const Icon(Icons.account_balance_wallet,color: kDrawerIconColor),
            title:const Text('Masraflar'),
            onTap: () {
              Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) =>
                            const  MasraflarScreen(),
                        ),
                      );
            },
          ),
          ListTile(
            leading:const Icon(Icons.point_of_sale,color: kDrawerIconColor),
            title:const Text('Hesaplar'),
            onTap: () {
              Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) =>
                          const    HesaplarScreen(),
                        ),
                      );
            },
          ),
           ListTile(
            leading:const Icon(Icons.group_add,color: kDrawerIconColor),
            title:const Text('Çalışanlar'),
            onTap: () {
               Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) =>
                            const  CalisanlarScreen(),
                        ),
                      );
            },
          ),
           ListTile(
            leading:const Icon(Icons.warehouse,color: kDrawerIconColor),
            title:const Text('Stoklar'),
            onTap: () {
              Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) =>
                            const  StokScreen(),
                        ),
                      );
            },
          ),
           ListTile(
            leading:const Icon(Icons.trending_up,color: kDrawerIconColor),
            title:const Text('Raporlar'),
            onTap: () {
              Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) =>
                         const  RaporlarScreen(),
                        ),
                      );
            },
          ),
         const Divider(),
          ListTile(
            leading:const Icon(Icons.notifications,color: kDrawerIconColor),
            title:const Text('Bildirimler'),
            onTap: () {
              Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) =>
                           const   BildirimlerScreen(),
                        ),
                      );
            },
          ),
          ListTile(
            leading:const Icon(Icons.exit_to_app,color: kDrawerIconColor),
            title:const Text('Çıkış Yap'),
            onTap: () {
              Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) =>
                           const   LoginScreen(),
                        ),
                      );
            },
          ),
        ],
      ),
    );
  }
}