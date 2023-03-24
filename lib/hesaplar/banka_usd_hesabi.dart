import 'package:fatura_app_2/constants.dart';
import 'package:fatura_app_2/navigation_bar.dart';
import 'package:flutter/material.dart';

class BankaUSDScreen extends StatefulWidget {
  const BankaUSDScreen({super.key});

  @override
  State<BankaUSDScreen> createState() => _BankaUSDScreenState();
}

class _BankaUSDScreenState extends State<BankaUSDScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: const NavBar(),
    //  bottomNavigationBar:const BottomNavBar(selectedMenu: MenuState.home),
      appBar: AppBar(
        backgroundColor: kAppBarColor,
        centerTitle: true,
        title: const Text(
          'Hesap Hareketleri',
        ),
      ),
      body:Column(
          children: [
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.02,
            ), 
            Center(
              child: Padding(
                padding: const EdgeInsets.only(left: 20,right: 20),
                child: Container(
                   decoration:  BoxDecoration(
                  color: Colors.white,
                  borderRadius:const BorderRadius.all(
                    Radius.circular(5.0),
                  ),
                  boxShadow: [
                    BoxShadow(
                      offset:const Offset(0, 0),
                      blurRadius: 20,
                      color:  Colors.grey.shade300,
                    ),
                  ],
                ),
                  child: Column(
                    children: [
                      const  Align(
                           alignment: Alignment.centerLeft,
                          child: Padding(
                            padding:  EdgeInsets.only(left: 20.2,top: 10),
                            child: Text(
                            "Banka USD Hesabı",               // textAlign: TextAlign.start,
                            style: TextStyle(
                              color: kTextColor3,
                              fontWeight: FontWeight.bold,
                              fontSize: 20,
                            ),
                                      ),
                                      
                          ),
                        ),
                      Padding(
                         padding: const EdgeInsets.only(left: 20.1,right: 20.1),
                        child: Divider(color: Colors.grey.shade300,thickness: 2,),
                      ),
                    const  Align(
                        alignment: Alignment.centerRight,
                        child: Padding(
                          padding:  EdgeInsets.only(right: 20.1,bottom: 10),
                          child: Text(
                                              "Güncel Bakiye: 0.00",
                                              style: TextStyle(
                                                color: kTextColor2,
                                                fontSize: 18,
                                              ),
                                                        ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
    );
  }
}
