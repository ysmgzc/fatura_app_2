import 'package:fatura_app_2/alislar/alislar.dart';
import 'package:fatura_app_2/home_screen/genel_durum.dart';
import 'package:fatura_app_2/masraflar/masraflar.dart';
import 'package:fatura_app_2/musteri/musteriler.dart';
import 'package:fatura_app_2/notifications.dart';
import 'package:fatura_app_2/personeller/personeller.dart';
import 'package:fatura_app_2/raporlar/r_alislar.dart';
import 'package:fatura_app_2/raporlar/r_depo_stoklari.dart';
import 'package:fatura_app_2/raporlar/r_hesap_harekerleri.dart';
import 'package:fatura_app_2/raporlar/r_iadeler.dart';
import 'package:fatura_app_2/raporlar/r_masraflar.dart';
import 'package:fatura_app_2/raporlar/r_satislar.dart';
import 'package:fatura_app_2/raporlar/r_stok_hareketleri.dart';
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
            accountName: Text('Yeşim Gezici', style: kListTileSize),
            accountEmail: Text('gezici267@gmail.com', style: kListTileSize),
            currentAccountPicture: CircleAvatar(
              radius: 30,
              backgroundImage: AssetImage("assets/images/camera.png"),
            ),
            decoration: BoxDecoration(
                image: DecorationImage(
              image: AssetImage(
                'assets/images/drawer.png',
              ),
              fit: BoxFit.cover,
            )),
          ),
          //-------------------------------------------------

          ListTile(
            leading: SizedBox(
              width: 30.0,
              height: 30.0,
              child: Image.asset('assets/icons/genelbakisicon.png'),
            ),
            title: const Text('Genel Bakış', style: kListTileSize),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const GenelBakisScreen(),
                ),
              );
            },
          ),

          //--------------------------------------------------
          ExpansionTile(
            iconColor: kDrawerIconColor,
            textColor: kDrawerTextColor,
            initiallyExpanded: true,
             leading: SizedBox(
              width: 30.0,
              height: 30.0,
              child: Image.asset('assets/icons/satisicon.png'),
            ),
            title: const Text('Satışlar', style: kExpTileSize),
            children: <Widget>[
              ListTile(
                contentPadding: const EdgeInsets.only(left: 50),
                 leading: SizedBox(
              width: 30.0,
              height: 30.0,
              child: Image.asset('assets/icons/faturaicon.png'),
            ),
                title: const Text('Satış Faturaları', style: kListTileSize),
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const SatislarScreen(),
                    ),
                  );
                },
              ),
               ListTile(
                contentPadding: const EdgeInsets.only(left: 50),
                leading: SizedBox(
              width: 30.0,
              height: 30.0,
              child: Image.asset('assets/icons/siparisicon.png'),
            ),
                title: const Text('Siparişler', style: kListTileSize),
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const SatislarScreen(),
                    ),
                  );
                },
              ),
              ListTile(
                contentPadding: const EdgeInsets.only(left: 50),
                 leading: SizedBox(
              width: 30.0,
              height: 30.0,
              child: Image.asset('assets/icons/serbestmeslekmakbuzicon.png'),
            ),
                title: const Text('Serbest Meslek Makbuzu', style: kListTileSize),
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const SatislarScreen(),
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
            leading: SizedBox(
              width: 30.0,
              height: 30.0,
              child: Image.asset('assets/icons/alisicon.png'),
            ),
            title: const Text('Alışlar', style: kExpTileSize),
            children: <Widget>[
              ListTile(
                contentPadding: const EdgeInsets.only(left: 50),
                leading: SizedBox(
              width: 30.0,
              height: 30.0,
              child: Image.asset('assets/icons/faturaicon.png'),
            ),
                title: const Text('Alış Faturaları', style: kListTileSize),
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const AlislarScreen(),
                    ),
                  );
                },
              ),
              ListTile(
                contentPadding: const EdgeInsets.only(left: 50),
                leading: SizedBox(
              width: 30.0,
              height: 30.0,
              child: Image.asset('assets/icons/siparisicon.png'),
            ),
                title: const Text('Siparişler', style: kListTileSize),
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const AlislarScreen(),
                    ),
                  );
                },
              ),
               ListTile(
                contentPadding: const EdgeInsets.only(left: 50),
                leading: SizedBox(
              width: 30.0,
              height: 30.0,
              child: Image.asset('assets/icons/serbestmeslekmakbuzicon.png'),
            ),
             title: const Text('Serbest Meslek Makbuzu', style: kListTileSize),
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const AlislarScreen(),
                    ),
                  );
                },
              ),
            ],
          ),
          //-------------------------------------------------------------------
              ListTile(
                leading: SizedBox(
              width: 30.0,
              height: 30.0,
              child: Image.asset('assets/icons/masraficon.png'),
            ),
                title: const Text('Masraflarım', style: kListTileSize),
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const MasraflarScreen(),
                    ),
                  );
                },
              ),
             
          //------------------------------------------------------------
         
              ListTile(
                leading: SizedBox(
              width: 30.0,
              height: 30.0,
              child: Image.asset('assets/icons/musteriicon.png'),
            ),
                title: const Text('Müşteriler', style: kListTileSize),
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const MusterilerScreen(),
                    ),
                  );
                },
              ),
          //----------------------------------------------------------
          
              ListTile(
                leading: SizedBox(
              width: 30.0,
              height: 30.0,
              child: Image.asset('assets/icons/tedarikciicon.png'),
            ),
                title: const Text('Tedarikçiler', style: kListTileSize),
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const TedarikcilerScreen(),
                    ),
                  );
                },
              ),
          //--------------------------------------------------------------------
              ListTile(
                leading: SizedBox(
              width: 30.0,
              height: 30.0,
              child: Image.asset('assets/icons/personelicon.png'),
            ),
                title: const Text('Personeller', style: kListTileSize),
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const CalisanlarScreen(),
                    ),
                  );
                },
              ),
          //-------------------------------------------------------
          ExpansionTile(
            iconColor: kDrawerIconColor,
            textColor: kDrawerTextColor,
            initiallyExpanded: true,
            leading: SizedBox(
              width: 30.0,
              height: 30.0,
              child: Image.asset('assets/icons/stokicon.png'),
            ),
            title: const Text('Stoklar & Hizmetler', style: kExpTileSize),
            children: <Widget>[
              ListTile(
                contentPadding: const EdgeInsets.only(left: 50),
                 leading: SizedBox(
              width: 30.0,
              height: 30.0,
              child: Image.asset('assets/icons/urunicon.png'),
            ),
                title: const Text('Ürünler', style: kListTileSize),
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const UrunlerScreen(),
                    ),
                  );
                },
              ),
               ListTile(
                contentPadding: const EdgeInsets.only(left: 50),
                 leading: SizedBox(
              width: 30.0,
              height: 30.0,
              child: Image.asset('assets/icons/hizmetlericon.png'),
            ),
                title: const Text('Hizmetler', style: kListTileSize),
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const UrunlerScreen(),
                    ),
                  );
                },
              ),
              ListTile(
                contentPadding: const EdgeInsets.only(left: 50),
                 leading: SizedBox(
              width: 30.0,
              height: 30.0,
              child: Image.asset('assets/icons/stokhareketicon.png'),
            ),
                title: const Text('Stok Hareketleri', style: kListTileSize),
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const StokScreen(),
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
            leading: SizedBox(
              width: 30.0,
              height: 30.0,
              child: Image.asset('assets/icons/parahesabiicon.png'),
            ),
            title: const Text('Para', style: kExpTileSize),
            children: <Widget>[
              ListTile(
                contentPadding: const EdgeInsets.only(left: 50),
                 leading: SizedBox(
              width: 30.0,
              height: 30.0,
              child: Image.asset('assets/icons/nakitdurumicon.png'),
            ),
                title: const Text('Nakit Durumu', style: kListTileSize),
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const UrunlerScreen(),
                    ),
                  );
                },
              ),
              ListTile(
                contentPadding: const EdgeInsets.only(left: 50),
                 leading: SizedBox(
              width: 30.0,
              height: 30.0,
              child: Image.asset('assets/icons/kasaicon.png'),
            ),
                title: const Text('Kasalar', style: kListTileSize),
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const StokScreen(),
                    ),
                  );
                },
              ),
               ListTile(
                contentPadding: const EdgeInsets.only(left: 50),
                 leading: SizedBox(
              width: 30.0,
              height: 30.0,
              child: Image.asset('assets/icons/bankahesapmutabakaticon.png'),
            ),
                title: const Text('Banka Hesapları', style: kListTileSize),
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const StokScreen(),
                    ),
                  );
                },
              ),
               ListTile(
                contentPadding: const EdgeInsets.only(left: 50),
                 leading: SizedBox(
              width: 30.0,
              height: 30.0,
              child: Image.asset('assets/icons/bankahesapmutabakaticon.png'),
            ),
                title: const Text('Banka Mutabakatı', style: kListTileSize),
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const StokScreen(),
                    ),
                  );
                },
              ),
               ListTile(
                contentPadding: const EdgeInsets.only(left: 50),
                 leading: SizedBox(
              width: 30.0,
              height: 30.0,
              child: Image.asset('assets/icons/cekicon.png'),
            ),
                title: const Text('Çekler', style: kListTileSize),
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const StokScreen(),
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
             leading: SizedBox(
              width: 30.0,
              height: 30.0,
              child: Image.asset('assets/icons/raporicon.png'),
            ),
            title: const Text('Raporlar', style: kExpTileSize),
            children: <Widget>[
              ListTile(
                contentPadding: const EdgeInsets.only(left: 50),
               leading: SizedBox(
              width: 30.0,
              height: 30.0,
              child: Image.asset('assets/icons/raporlarsayfasiicon.png'),
            ),
                title: const Text('Raporlar Sayfası', style: kListTileSize),
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const RaporlarScreen(),
                    ),
                  );
                },
              ),
              ListTile(
                contentPadding: const EdgeInsets.only(left: 50),
                 leading: SizedBox(
              width: 30.0,
              height: 30.0,
              child: Image.asset('assets/icons/satisraporicon.png'),
            ),
                title: const Text('Satış Raporu', style: kListTileSize),
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const SatisRaporu(),
                    ),
                  );
                },
              ),
              ListTile(
                contentPadding: const EdgeInsets.only(left: 50),
                 leading: SizedBox(
              width: 30.0,
              height: 30.0,
              child: Image.asset('assets/icons/alisraporicon.png'),
            ),
                title: const Text('Alış Raporu', style: kListTileSize),
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const AlisRaporu(),
                    ),
                  );
                },
              ),
               ListTile(
                contentPadding: const EdgeInsets.only(left: 50),
                leading: SizedBox(
              width: 30.0,
              height: 30.0,
              child: Image.asset('assets/icons/masrafraporuicon.png'),
            ),
                title: const Text('Masraf Raporu', style: kListTileSize),
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const MasrafRaporu(),
                    ),
                  );
                },
              ),
               ListTile(
                contentPadding: const EdgeInsets.only(left: 50),
                 leading: SizedBox(
              width: 30.0,
              height: 30.0,
              child: Image.asset('assets/icons/siparisraporuicon.png'),
            ),
                title: const Text('Sipariş Raporu', style: kListTileSize),
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const DepoStokRaporu(),
                    ),
                  );
                },
              ),
               ListTile(
                contentPadding: const EdgeInsets.only(left: 50),
                 leading: SizedBox(
              width: 30.0,
              height: 30.0,
              child: Image.asset('assets/icons/alissatistoplamrapor.png'),
            ),
                title: const Text('Alış / Satış Toplamları', style: kListTileSize),
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const HesapHareketleri(),
                    ),
                  );
                },
              ),
              
              ListTile(
                contentPadding: const EdgeInsets.only(left: 50),
                 leading: SizedBox(
              width: 30.0,
              height: 30.0,
              child: Image.asset('assets/icons/kdvraporicon.png'),
            ),
                title: const Text('KDV Raporu', style: kListTileSize),
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const StokHareketleriRaporu(),
                    ),
                  );
                },
              ),
              ListTile(
                contentPadding: const EdgeInsets.only(left: 50),
                 leading: SizedBox(
              width: 30.0,
              height: 30.0,
              child: Image.asset('assets/icons/depostokraporicon.png'),
            ),
                title: const Text('Depo Stok Raporu', style: kListTileSize),
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const DepoStokRaporu(),
                    ),
                  );
                },
              ),
               ListTile(
                contentPadding: const EdgeInsets.only(left: 50),
                leading: SizedBox(
              width: 30.0,
              height: 30.0,
              child: Image.asset('assets/icons/iaderaporuicon.png'),
            ),
                title: const Text('İade Raporu', style: kListTileSize),
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const IadeRaporu(),
                    ),
                  );
                },
              ),
              ListTile(
                contentPadding: const EdgeInsets.only(left: 50),
                 leading: SizedBox(
              width: 30.0,
              height: 30.0,
              child: Image.asset('assets/icons/stokhareketraporicon.png'),
            ),
                title: const Text('Stok Hareketleri', style: kListTileSize),
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const StokHareketleriRaporu(),
                    ),
                  );
                },
              ),
             
              
            ],
          ),
          //-----------------------------------------------------------------
          const Divider(),
          ListTile(
            leading: SizedBox(
              width: 30.0,
              height: 30.0,
              child: Image.asset('assets/icons/bildirimicon.png'),
            ),
            title: const Text('Bildirimler', style: kListTileSize),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const BildirimlerScreen(),
                ),
              );
            },
          ),
          ListTile(
           leading: SizedBox(
              width: 30.0,
              height: 30.0,
              child: Image.asset('assets/icons/cikisyapicon.png'),
            ),
            title: const Text('Çıkış Yap', style: kListTileSize),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const LoginScreen(),
                ),
              );
            },
          ),
        ],
      ),
    );
  }
}
