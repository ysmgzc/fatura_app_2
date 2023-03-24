import 'package:fatura_app_2/alislar/alislar.dart';
import 'package:fatura_app_2/calisanlar/calisan_ekle.dart';
import 'package:fatura_app_2/calisanlar/calisanlar.dart';
import 'package:fatura_app_2/hesaplar/hesap_bilgileri.dart';
import 'package:fatura_app_2/hesaplar/hesaplar.dart';
import 'package:fatura_app_2/masraflar/manuel_masraf_girisi.dart';
import 'package:fatura_app_2/masraflar/masraflar.dart';
import 'package:fatura_app_2/musteri/musteri_ekle.dart';
import 'package:fatura_app_2/musteri/musteriler.dart';
import 'package:fatura_app_2/notifications.dart';
import 'package:fatura_app_2/raporlar/r_alislar.dart';
import 'package:fatura_app_2/raporlar/r_depo_stoklari.dart';
import 'package:fatura_app_2/raporlar/r_hesap_harekerleri.dart';
import 'package:fatura_app_2/raporlar/r_iadeler.dart';
import 'package:fatura_app_2/raporlar/r_masraflar.dart';
import 'package:fatura_app_2/raporlar/r_satislar.dart';
import 'package:fatura_app_2/raporlar/r_stok_hareketleri.dart';
import 'package:fatura_app_2/raporlar/raporlar.dart';
import 'package:fatura_app_2/satislar/perakende_satis.dart';
import 'package:fatura_app_2/satislar/satislar.dart';
import 'package:fatura_app_2/screens/login_screen.dart';
import 'package:fatura_app_2/stok/stok.dart';
import 'package:fatura_app_2/stok/stok_durumu.dart';
import 'package:fatura_app_2/tederikci/tedarikci_ekle.dart';
import 'package:fatura_app_2/tederikci/tedarikciler.dart';
import 'package:fatura_app_2/urunler/urun_ekle.dart';
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
            accountName: Text('Yeşim Gezici',style: kListTileSize), 
            accountEmail: Text('gezici267@gmail.com',style: kListTileSize),
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
            //--------------------------------------------------
          ExpansionTile(
            iconColor: kDrawerIconColor,
            initiallyExpanded: true,
            textColor: kDrawerTextColor,
            leading: const Icon(Icons.groups, color: kDrawerIconColor),
           title: const Text('Müşteriler',style: kExpTileSize,),
            children: <Widget>[
                    ListTile( 
                      contentPadding: const EdgeInsets.only(left: 50),
                    leading: const Icon(Icons.groups, color: kDrawerIconColor1),
                    title: const Text('Müşterilerim',style: kListTileSize),
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
                    contentPadding: const EdgeInsets.only(left: 50),
                    leading: const Icon(Icons.person_add, color: kDrawerIconColor1),
                    title: const Text('Müşteri Ekle',style: kListTileSize),
                    onTap: () {
                      Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) =>
                                  const   MusteriEkle(),
                                ),
                              );
                    },
                    ),
          ],
          ),
          //----------------------------------------------------------
           ExpansionTile(
             iconColor: kDrawerIconColor,
            textColor: kDrawerTextColor,
            initiallyExpanded: true,
            leading:const Icon(Icons.local_shipping,color: kDrawerIconColor),
            title:const Text('Tedarikçiler',style: kExpTileSize),
             children: <Widget>[
                    ListTile( 
                      contentPadding: const EdgeInsets.only(left: 50),
                    leading: const Icon(Icons.groups, color: kDrawerIconColor1),
                    title: const Text('Tedarikçilerim',style: kListTileSize),
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
                    contentPadding:const EdgeInsets.only(left: 50),
                    leading: const Icon(Icons.person_add, color: kDrawerIconColor1),
                    title: const Text('Tedarikçi Ekle',style: kListTileSize),
                    onTap: () {
                      Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) =>
                                  const   TedarikciEkle(),
                                ),
                              );
                    },
                    ),
          ],
           
          ),
    //--------------------------------------------------------------------
           ExpansionTile(
             iconColor: kDrawerIconColor,
            textColor: kDrawerTextColor,
             initiallyExpanded: true,
            leading:const Icon(Icons.shopping_basket,color: kDrawerIconColor),
            title:const Text('Stoklarım',style: kExpTileSize),
           children: <Widget>[
                    ListTile( 
                      contentPadding:const EdgeInsets.only(left: 50),
                    leading: const Icon(Icons.groups, color: kDrawerIconColor1),
                    title: const Text('Stoklarım',style: kListTileSize),
                    onTap: () {
              Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) =>
                           const   UrunlerScreen(),
                        ),
                      );
            },
                    ),
                    ListTile( 
                    contentPadding:const EdgeInsets.only(left: 50),
                    leading: const Icon(Icons.person_add, color: kDrawerIconColor1),
                    title: const Text('Stok Ekle',style: kListTileSize),
                    onTap: () {
                      Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) =>
                                  const   UrunEkle(),
                                ),
                              );
                    },
                    ),
          ],
          ),
          //---------------------------------------------------------------------
          ExpansionTile(
             iconColor: kDrawerIconColor,
            textColor: kDrawerTextColor,
             initiallyExpanded: true,
            leading:const Icon(Icons.add_shopping_cart,color: kDrawerIconColor),
            title:const Text('Alışlar',style: kExpTileSize),
           children: <Widget>[
                    ListTile( 
                      contentPadding:const EdgeInsets.only(left: 50),
                    leading: const Icon(Icons.groups, color: kDrawerIconColor1),
                    title: const Text('Alışlar',style: kListTileSize),
                    onTap: () {
              Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) =>
                           const   AlislarScreen(),
                        ),
                      );
            },
                    ),
                   
          ],
          ),
          //-------------------------------------------------------------------
          ExpansionTile(
             iconColor: kDrawerIconColor,
            textColor: kDrawerTextColor,
             initiallyExpanded: true,
            leading:const Icon(Icons.shopping_cart,color: kDrawerIconColor),
            title:const Text('Satışlar',style: kExpTileSize),
           children: <Widget>[
                    ListTile( 
                      contentPadding:const EdgeInsets.only(left: 50),
                    leading: const Icon(Icons.groups, color: kDrawerIconColor1),
                    title: const Text('Satışlarım',style: kListTileSize),
                    onTap: () {
              Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) =>
                           const  SatislarScreen(),
                        ),
                      );
            },
                    ),
                    ListTile( 
                    contentPadding:const EdgeInsets.only(left: 50),
                    leading: const Icon(Icons.person_add, color: kDrawerIconColor1),
                    title: const Text('Perakende Satış',style: kListTileSize),
                    onTap: () {
                      Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) =>
                                  const   Perakende(),
                                ),
                              );
                    },
                    ),
          ],
          ),
          //----------------------------------------------------
          ExpansionTile(
             iconColor: kDrawerIconColor,
            textColor: kDrawerTextColor,
             initiallyExpanded: true,
            leading:const Icon(Icons.account_balance_wallet,color: kDrawerIconColor),
            title:const Text('Masraflar',style: kExpTileSize),
            children: <Widget>[
                    ListTile( 
                      contentPadding:const EdgeInsets.only(left: 50),
                    leading: const Icon(Icons.groups, color: kDrawerIconColor1),
                    title: const Text('Masraflarım',style: kListTileSize),
                    onTap: () {
              Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) =>
                           const   MasraflarScreen(),
                        ),
                      );
            },
                    ),
                    ListTile( 
                    contentPadding:const EdgeInsets.only(left: 50),
                    leading: const Icon(Icons.person_add, color: kDrawerIconColor1),
                    title: const Text('Manuel Masraf Girişi',style: kListTileSize),
                    onTap: () {
                      Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) =>
                                  const   ManuelMasraf(),
                                ),
                              );
                    },
                    ),
          ],
          ),
          //------------------------------------------------------------
          ExpansionTile(
             iconColor: kDrawerIconColor,
            textColor: kDrawerTextColor,
             initiallyExpanded: true,
            leading:const Icon(Icons.point_of_sale,color: kDrawerIconColor),
            title:const Text('Hesaplar',style: kExpTileSize),
           children: <Widget>[
                    ListTile( 
                      contentPadding:const EdgeInsets.only(left: 50),
                    leading: const Icon(Icons.groups, color: kDrawerIconColor1),
                    title: const Text('Hesaplarım',style: kListTileSize),
                    onTap: () {
              Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) =>
                           const   HesaplarScreen(),
                        ),
                      );
            },
                    ),
                    ListTile( 
                    contentPadding:const EdgeInsets.only(left: 50),
                    leading: const Icon(Icons.person_add, color: kDrawerIconColor1),
                    title: const Text('Hesap Bilgileri',style: kListTileSize),
                    onTap: () {
                      Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) =>
                                  const   HesapBilgileri(),
                                ),
                              );
                    },
                    ),
          ],
          ),
          //--------------------------------------------------
           ExpansionTile(
             iconColor: kDrawerIconColor,
            textColor: kDrawerTextColor,
             initiallyExpanded: true,
            leading:const Icon(Icons.group_add,color: kDrawerIconColor),
            title:const Text('Çalışanlar',style: kExpTileSize),
            children: <Widget>[
                    ListTile( 
                      contentPadding:const EdgeInsets.only(left: 50),
                    leading: const Icon(Icons.groups, color: kDrawerIconColor1),
                    title: const Text('Çalışanlarım',style: kListTileSize),
                    onTap: () {
              Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) =>
                           const   CalisanlarScreen(),
                        ),
                      );
            },
                    ),
                    ListTile( 
                    contentPadding:const EdgeInsets.only(left: 50),
                    leading: const Icon(Icons.person_add, color: kDrawerIconColor1),
                    title: const Text('Çalışan Ekle',style: kListTileSize),
                    onTap: () {
                      Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) =>
                                  const   CalisanEkle(),
                                ),
                              );
                    },
                    ),
          ],
          ),
          //-------------------------------------------------------
           ExpansionTile(
            
             iconColor: kDrawerIconColor,
            textColor: kDrawerTextColor,
             initiallyExpanded: true,
            leading:const Icon(Icons.warehouse,color: kDrawerIconColor),
            title:const Text('Stoklar',style: kExpTileSize),
           children: <Widget>[
                    ListTile( 
                      contentPadding:const EdgeInsets.only(left: 50),
                    leading: const Icon(Icons.groups, color: kDrawerIconColor1),
                    title: const Text('Stoklarım',style: kListTileSize),
                    onTap: () {
              Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) =>
                           const   StokScreen(),
                        ),
                      );
            },
                    ),
                    ListTile( 
                    contentPadding:const EdgeInsets.only(left: 50),
                    leading: const Icon(Icons.person_add, color: kDrawerIconColor1),
                    title: const Text('Stok Durumu',style: kListTileSize),
                    onTap: () {
                      Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) =>
                                  const   StokDurumu(),
                                ),
                              );
                    },
                    ),
          ],
          ),
          //-------------------------------------------
           ExpansionTile(
             iconColor: kDrawerIconColor,
            textColor: kDrawerTextColor,
             initiallyExpanded: true,
            leading:const Icon(Icons.trending_up,color: kDrawerIconColor),
            title:const Text('Raporlar',style: kExpTileSize),
           children: <Widget>[
                    ListTile( 
                      contentPadding:const EdgeInsets.only(left: 50),
                    leading: const Icon(Icons.groups, color: kDrawerIconColor1),
                    title: const Text('Raporlar',style: kListTileSize),
                    onTap: () {
              Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) =>
                           const   RaporlarScreen(),
                        ),
                      );
            },
                    ),
                    ListTile( 
                    contentPadding:const EdgeInsets.only(left: 50),
                    leading: const Icon(Icons.person_add, color: kDrawerIconColor1),
                    title: const Text('Alış Raporu',style: kListTileSize),
                    onTap: () {
                      Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) =>
                                  const   AlisRaporu(),
                                ),
                              );
                    },
                    ),
                    ListTile( 
                      contentPadding:const EdgeInsets.only(left: 50),
                    leading: const Icon(Icons.groups, color: kDrawerIconColor1),
                    title: const Text('Depo Stok Raporu',style: kListTileSize),
                    onTap: () {
              Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) =>
                           const   DepoStokRaporu(),
                        ),
                      );
            },
                    ),
                    ListTile( 
                    contentPadding:const EdgeInsets.only(left: 50),
                    leading: const Icon(Icons.person_add, color: kDrawerIconColor1),
                    title: const Text('Hesap Hareket Raporu',style: kListTileSize),
                    onTap: () {
                      Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) =>
                                  const   HesapHareketleri(),
                                ),
                              );
                    },
                    ),
                    ListTile( 
                      contentPadding:const EdgeInsets.only(left: 50),
                    leading: const Icon(Icons.groups, color: kDrawerIconColor1),
                    title: const Text('İade Edilenler',style: kListTileSize),
                    onTap: () {
              Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) =>
                           const   IadeRaporu(),
                        ),
                      );
            },
                    ),
                    ListTile( 
                    contentPadding:const EdgeInsets.only(left: 50),
                    leading: const Icon(Icons.person_add, color: kDrawerIconColor1),
                    title: const Text('Masraflar',style: kListTileSize),
                    onTap: () {
                      Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) =>
                                  const   MasrafRaporu(),
                                ),
                              );
                    },
                    ),
                    ListTile( 
                      contentPadding: const EdgeInsets.only(left: 50),
                    leading: const Icon(Icons.groups, color: kDrawerIconColor1),
                    title: const Text('Satışlar',style: kListTileSize),
                    onTap: () {
              Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) =>
                           const   SatisRaporu(),
                        ),
                      );
            },
                    ),
                    ListTile( 
                    contentPadding:const EdgeInsets.only(left: 50),
                    leading: const Icon(Icons.person_add, color: kDrawerIconColor1),
                    title: const Text('Stok Hareketleri',style: kListTileSize),
                    onTap: () {
                      Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) =>
                                  const   StokHareketleriRaporu(),
                                ),
                              );
                    },
                    ),
          ],
          ),
          //-----------------------------------------------------------------
         const Divider(),
          ListTile(
            leading:const Icon(Icons.notifications,color: kDrawerIconColor),
            title:const Text('Bildirimler',style: kListTileSize),
            onTap: () {
              Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) =>
                          const    BildirimlerScreen(),
                        ),
                      );
            },
          ),
          ListTile(
            leading:const Icon(Icons.exit_to_app,color: kDrawerIconColor),
            title:const Text('Çıkış Yap',style: kListTileSize),
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