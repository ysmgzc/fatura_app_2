import 'package:fatura_app_2/constants.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class SatisPerakendeEkle extends StatefulWidget {
  const SatisPerakendeEkle({Key? key}) : super(key: key);

  @override
  State<SatisPerakendeEkle> createState() => _SatisPerakendeEkleState();
}

class _SatisPerakendeEkleState extends State<SatisPerakendeEkle> {
  String? selectedValue;
  List<String> items = <String>[
  'TL',
  'AZM',
  'CHF',
  'CNY',
  'EUR',
  'USD',
  'KGS',
];
  TextEditingController dateInput = TextEditingController();
  @override
  Widget build(BuildContext context) {
    double screenHeight = MediaQuery.of(context).size.height;
    double screenWidth = MediaQuery.of(context).size.width;

    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        shadowColor: Colors.transparent,
        backgroundColor: Colors.transparent,
        centerTitle: true,
        title: const Text(
          'Perakende Satış Faturası',
          style: TextStyle(color: Colors.black),
        ),
      ),
backgroundColor: Colors.white,
body: SingleChildScrollView(
  child: Column(
    children: [
      Row(
        children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Padding(
                padding: const EdgeInsets.fromLTRB(15, 15, 10, 0),
                child: Container(
                  height: screenHeight * 0.22,
                  width: screenWidth * 0.47,
                  color: kContImgColor,
                  child: Stack(
                    alignment: Alignment.center,
                    children: [
                      Align(
                        alignment: Alignment.bottomCenter,
                        child: TextButton(
                          onPressed: () {},
                          style: TextButton.styleFrom(
                            foregroundColor: Colors.black,
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: const [
                              Icon(
                                Icons.add,
                                color: Colors.blue,
                              ),
                              SizedBox(width: 3),
                              Text('Müşteri ekle',style: TextStyle(color: Color(0xff748891),fontWeight: FontWeight.bold),),
                              SizedBox(height: 50),
                            ],
                          ),
                        ),
                      ),
                      Align(
                        alignment: const Alignment(0, -0.3),
                        child: ClipOval(
                          child: Container(
                            width: 60,
                            height: 60,
                            decoration: const BoxDecoration(
                              image: DecorationImage(
                                image: AssetImage('assets/icons/personicon.png'),
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
                Container(
              height: screenHeight * 0.15,
              width: screenWidth * 0.47,
              color: Colors.white,
              alignment: Alignment.topLeft,
              child: Padding(
                padding: const EdgeInsets.only(left: 15),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                 children: [
                  Divider(
                    indent: 35,
                  endIndent: 35,),
                  SizedBox(height: 3,),
                  const Text(
                    "DÖVİZ", 
                  textAlign: TextAlign.left, 
                  style: TextStyle(
                    fontSize: 14,
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                  ),
                    ),
                PopupMenuButton(
                  child: Container(
                    alignment: Alignment.center,
                    height: 40,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                    Text(
                      selectedValue ?? "TL",
                      style: TextStyle( fontSize: 16,
                        color: Colors.grey,
                      ),
                    ),
                    Icon(
                      Icons.expand_more,
                      color: Colors.grey,
                    ),
                  ],
                ),
              ),
              onSelected: (value) {
                setState(() {
                  selectedValue = value as String;
                });
              },
              itemBuilder: (BuildContext context) {
                return items.map((value) {
                  return PopupMenuItem(
                    value: value,
                    child: Text(value),
                  );
                }).toList();
              },
            ),
          ],
        ),
      ),
)

                  ],
                ),
                Container(
                  height: screenHeight * 0.35,
                  width: screenWidth * 0.47,
                  color: Colors.white,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children:  [
                   const   Align(
                        alignment: Alignment.center,
                        child: Text(
                          'FATURA NUMARASI',
                          style: TextStyle(fontSize: 20, color: Color(0XFFCE4D56), fontWeight: FontWeight.bold),
                        ),
                      ),
                    const  SizedBox(
                        height: 20,
                      ),
                    const  Align(
                        alignment: Alignment.center,
                        child: Text(
                          '---',
                          style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                        ),
                      ),
                    const SizedBox( height: 20,),
                    Divider( indent: 45,
                  endIndent: 40,),
                      const Align(
                        alignment: Alignment.center,
                        child: Text(
                          'FATURA TARİHİ',
                          style: TextStyle(fontSize: 14, color:Colors.black,fontWeight: FontWeight.bold),
                        ),
                      ),
                      const SizedBox( height: 5,),
                     Align(
                      alignment: Alignment.center,
                      child: Column(
                        children: [
                          Text(
                            DateFormat('dd MM yyyy').format(DateTime.now()),
                            style:const TextStyle(fontSize: 16,fontWeight: FontWeight.bold,color: Color(0xff748891)),
                          ),
                           const SizedBox( height: 8,),
                          Text(
                            DateFormat('HH:mm').format(DateTime.now()),
                            style:const TextStyle(fontSize: 16,fontWeight: FontWeight.bold,color: Color(0xff748891)),
                          ),
                        ],
                      ),
                    ),
                    const Divider( indent: 45,
                  endIndent: 40,),
                    const Align(
                        alignment: Alignment.center,
                        child: Text(
                          'VADE TARİHİ',
                          style: TextStyle(fontSize: 14, color:Colors.black,fontWeight: FontWeight.bold),
                        ),
                      ),
                       const SizedBox( height: 5,),
                      Align(
                        alignment: Alignment.center,
                        child:Text(
                            DateFormat('dd MM yyyy').format(DateTime.now()),
                            style:const TextStyle(fontSize: 16,fontWeight: FontWeight.bold,color: Color(0xff748891)),
                          ),
                      )
                    ],
                  ),
                ),
              ],
            ),
             Container(
              height: screenHeight * 0.10,
              width: screenWidth * 0.95,
              color: kContImgColor,
              child: Align(
                alignment: Alignment.centerLeft,
                child: TextButton(
                  onPressed: () {},
                  style: TextButton.styleFrom(
                    foregroundColor: Colors.black,
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: const [
                      SizedBox(width: 3),
                      Icon(
                        Icons.add,
                        color: Colors.blue,
                      ),
                      SizedBox(width: 3),
                      Text('Ürün / Hizmet Ekle',style: TextStyle(color: Color(0xff748891),fontWeight: FontWeight.bold),),
                      SizedBox(height: 50),
                    ],
                  ),
                ),
              ),
            ),
    ],
  ),
        
      ),
    );
  }
}
