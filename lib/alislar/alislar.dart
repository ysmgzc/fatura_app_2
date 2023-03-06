import 'package:fatura_app_2/constants.dart';
import 'package:fatura_app_2/navigation_bar.dart';
import 'package:fatura_app_2/search_field.dart';
import 'package:fatura_app_2/tederikci/tedarikciler.dart';
import 'package:flutter/material.dart';

class AlislarScreen extends StatefulWidget {
  const AlislarScreen({super.key});

  @override
  State<AlislarScreen> createState() => _AlislarScreenState();
}

class _AlislarScreenState extends State<AlislarScreen> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        drawer: NavBar(),
        appBar: AppBar(
          backgroundColor: kAppBarColor,
          centerTitle: true,
          title: Text(
            'alışlar',
          ),
          bottom: TabBar(
            indicatorColor: Colors.white,
            indicatorWeight: 5,
            tabs: [
              Tab(
                icon: Icon(Icons.add_shopping_cart),
                text: "Siparişler",
              ),
              Tab(
                icon: Icon(Icons.difference),
                text: "İrsaliyeler",
              ),
              Tab(
                icon: Icon(Icons.receipt),
                text: "Faturalar",
              ),
            ],
          ),
        ),
        body: TabBarView(
          children: [
            Siparisler(),
            Irsaliyeler(),
            Faturalar(),
          ],
        ),
         floatingActionButton: FloatingActionButton(
        backgroundColor: kbuttonColor,
         child: Icon(Icons.add),
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => TedarikcilerScreen(),
            ),
          );
        },
      //  label: Text('Ekle'),
      ),
      ),
    );
  }
}
class Siparisler extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          SizedBox(
            height: MediaQuery.of(context).size.height * 0.02,
          ),
          SearchField(),
          Center(
            child: Text("Siparişler"),
          ),
        ],
      ),
    );
  }
}

class Irsaliyeler extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          SizedBox(
            height: MediaQuery.of(context).size.height * 0.02,
          ),
          SearchField(),
          Center(
            child: Text("İrsaliyeler"),
          ),
        ],
      ),
    );
  }
}

class Faturalar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          SizedBox(
            height: MediaQuery.of(context).size.height * 0.02,
          ),
          SearchField(),
          Center(
            child: Text("Faturalar"),
          ),
        ],
      ),
    );
  }
}
