import 'package:fatura_app_2/constants.dart';
import 'package:fatura_app_2/navigation_bar.dart';
import 'package:fatura_app_2/search_field.dart';
import 'package:fatura_app_2/tederikci/tedarikci_ekle.dart';
import 'package:flutter/material.dart';

class BildirimlerScreen extends StatefulWidget {
  const BildirimlerScreen({super.key});

  @override
  State<BildirimlerScreen> createState() => _BildirimlerScreenState();
}

class _BildirimlerScreenState extends State<BildirimlerScreen> {
  var index = 2;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: NavBar(),
      appBar: AppBar(
        backgroundColor: kAppBarColor,
        centerTitle: true,
        title: Text(
          'bildirimler',
        ),
      ),
      body: Container(),
    );
  }
}
