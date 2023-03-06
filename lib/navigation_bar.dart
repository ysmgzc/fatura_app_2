import 'package:fatura_app_2/alislar/alislar.dart';
import 'package:fatura_app_2/calisanlar/calisanlar.dart';
import 'package:fatura_app_2/musteri/musteriler.dart';
import 'package:fatura_app_2/notifications.dart';
import 'package:fatura_app_2/satislar/satislar.dart';
import 'package:fatura_app_2/screens/login_screen.dart';
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
          UserAccountsDrawerHeader(
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
            leading: Icon(Icons.groups, color: kDrawerIconColor),
            title: Text('Müşteriler'),
            onTap: () {
              Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) =>
                              MusterilerScreen(),
                        ),
                      );
            },
          ),
           ListTile(
            leading: Icon(Icons.local_shipping,color: kDrawerIconColor),
            title: Text('Tedarikçiler'),
            onTap: () {
              Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) =>
                              TedarikcilerScreen(),
                        ),
                      );
            },
          ),
           ListTile(
            leading: Icon(Icons.shopping_basket,color: kDrawerIconColor),
            title: Text('Ürünler'),
            onTap: () {
              Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) =>
                              UrunlerScreen(),
                        ),
                      );
            },
          ),
          ListTile(
            leading: Icon(Icons.add_shopping_cart,color: kDrawerIconColor),
            title: Text('Alışlar'),
            onTap: () {
              Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) =>
                              AlislarScreen(),
                        ),
                      );
            },
          ),
          ListTile(
            leading: Icon(Icons.shopping_cart,color: kDrawerIconColor),
            title: Text('Satışlar'),
            onTap: () {
              Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) =>
                              SatislarScreen(),
                        ),
                      );
            },
          ),
          ListTile(
            leading: Icon(Icons.account_balance_wallet,color: kDrawerIconColor),
            title: Text('Masraflar'),
            onTap: () {
              Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) =>
                              TedarikcilerScreen(),
                        ),
                      );
            },
          ),
          ListTile(
            leading: Icon(Icons.point_of_sale,color: kDrawerIconColor),
            title: Text('Hesaplar'),
            onTap: () {
              Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) =>
                              TedarikcilerScreen(),
                        ),
                      );
            },
          ),
           ListTile(
            leading: Icon(Icons.group_add,color: kDrawerIconColor),
            title: Text('Çalışanlar'),
            onTap: () {
               Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) =>
                              CalisanlarScreen(),
                        ),
                      );
            },
          ),
           ListTile(
            leading: Icon(Icons.inventory_2,color: kDrawerIconColor),
            title: Text('Stoklar'),
            onTap: () {
              Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) =>
                              TedarikcilerScreen(),
                        ),
                      );
            },
          ),
           ListTile(
            leading: Icon(Icons.trending_up,color: kDrawerIconColor),
            title: Text('Raporlar'),
            onTap: () {
              Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) =>
                              TedarikcilerScreen(),
                        ),
                      );
            },
          ),
          Divider(),
          ListTile(
            leading: Icon(Icons.notifications,color: kDrawerIconColor),
            title: Text('Bildirimler'),
            onTap: () {
              Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) =>
                              BildirimlerScreen(),
                        ),
                      );
            },
          ),
          ListTile(
            leading: Icon(Icons.exit_to_app,color: kDrawerIconColor),
            title: Text('Çıkış Yap'),
            onTap: () {
              Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) =>
                              LoginScreen(),
                        ),
                      );
            },
          ),
        ],
      ),
    );
  }
}