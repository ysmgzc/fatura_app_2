import 'package:fatura_app_2/musteri/musteriler.dart';
import 'package:fatura_app_2/screens/login_screen.dart';
import 'package:fatura_app_2/urunler/urun_ekle.dart';
import 'package:flutter/material.dart';
void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Fatura',
    debugShowCheckedModeBanner: false,
      home: UrunEkle(),
    );
  }
}