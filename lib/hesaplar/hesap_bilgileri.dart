import 'package:dropdown_button2/dropdown_button2.dart';
import 'package:fatura_app_2/constants.dart';
import "package:flutter/material.dart";
class HesapBilgileri extends StatefulWidget {
  const HesapBilgileri({super.key});

  @override
  State<HesapBilgileri> createState() => _HesapBilgileriState();
}

class _HesapBilgileriState extends State<HesapBilgileri> {
  TextEditingController dateInput = TextEditingController();
  @override
  void initState() {
    dateInput.text = ""; //set the initial value of text field
    super.initState();
  }
 bool? value = false;
  String? selectedValue;
  List<String> items0 = [
    'Kasa',
    'Banka',
    'POS',
    'Kredi Kartı',
  ];
  List<String> items1 = [
   'TL',
   'USD',
   'EUR',
   'CAD',
   'GHS',
   'XAU',
];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage("assets/images/loggin2.png"),
            fit: BoxFit.cover,
          ),
        ),
        child: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.1,
              ),
              Text(
                'Hesap Bilgileri',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: MediaQuery.of(context).size.width * 0.07,
                  fontWeight: FontWeight.bold,
                  shadows: const [
                    BoxShadow(color: Colors.black, offset: Offset(1, 2), blurRadius: 3),
                  ],
                ),
              ),
             SizedBox(
                height: MediaQuery.of(context).size.height * 0.05,
              ),
               Container(
                width: MediaQuery.of(context).size.width * 0.8,
                child: TextFormField(
                  style: const TextStyle(
                    height: 1.5,
                  ),
                  decoration: const InputDecoration(
                    contentPadding: EdgeInsets.only(left: 10, top: 10, bottom: 15),
                    prefixIcon: Padding(
                        padding: EdgeInsets.only(top: 12),
                        child: Text(
                          "Hesap Adı: ",
                          style: TextStyle(color: Colors.white),
                        )),
                    enabledBorder: UnderlineInputBorder(
                      borderSide: BorderSide(color: Colors.white),
                    ),
                    focusedBorder: UnderlineInputBorder(borderSide: BorderSide(color: Colors.white)),
                  ),
                ),
              ),
              Container(
                  width: MediaQuery.of(context).size.width*0.8,
                  child: Padding(
                    padding:const EdgeInsets.only( top: 15),
                    child: DropdownButton2(
                      icon:const Icon(Icons.expand_more, color: Colors.white,),
                      underline: Container( 
                       height: 2, color: Colors.white60 ),
                      hint:const Text(
                        textAlign: TextAlign.start,
                        'Hesap Tipi',
                        style: TextStyle(
                          fontSize: 15.5,
                          color: ktextColor,
                        ),
                      ),
                      items: items0
                          .map((item) =>
                          DropdownMenuItem<String>(
                            value: item,
                            child: Text(
                              item,
                              style: const TextStyle(
                                fontSize: 14,
                              ),
                            ),
                          ))
                          .toList(),
                      value: selectedValue,
                      onChanged: (value) {
                        setState(() {
                          selectedValue = value as String;
                        });
                      },
                      buttonHeight: 40,
                      buttonWidth: MediaQuery.of(context).size.width * 0.8,
                      itemHeight: 40,
                      //itemWidth: 140,
                    ),
                  ),
                ),
                 Container(
                  width: MediaQuery.of(context).size.width*0.8,
                  child: Padding(
                    padding:const EdgeInsets.only( top: 15),
                    child: DropdownButton2(
                      icon:const Icon(Icons.expand_more, color: Colors.white,),
                      underline: Container( 
                       height: 2, color: Colors.white60 ),
                      hint:const Text(
                        textAlign: TextAlign.start,
                        'Para Birimi',
                        style: TextStyle(
                          fontSize: 15.5,
                          color: ktextColor,
                        ),
                      ),
                      items: items1
                          .map((item) =>
                          DropdownMenuItem<String>(
                            value: item,
                            child: Text(
                              item,
                              style: const TextStyle(
                                fontSize: 14,
                              ),
                            ),
                          ))
                          .toList(),
                      value: selectedValue,
                      onChanged: (value) {
                        setState(() {
                          selectedValue = value as String;
                        });
                      },
                      buttonHeight: 40,
                      buttonWidth: MediaQuery.of(context).size.width * 0.8,
                      itemHeight: 40,
                      //itemWidth: 140,
                    ),
                  ),
                ),
                 Container(
                width: MediaQuery.of(context).size.width * 0.8,
                child: TextFormField(
                  style: const TextStyle(
                    height: 1.5,
                  ),
                  decoration: const InputDecoration(
                    contentPadding: EdgeInsets.only(left: 10, top: 10, bottom: 15),
                    prefixIcon: Padding(
                        padding: EdgeInsets.only(top: 12),
                        child: Text(
                          "Bakiyesi: ",
                          style: TextStyle(color: Colors.white),
                        )),
                    enabledBorder: UnderlineInputBorder(
                      borderSide: BorderSide(color: Colors.white),
                    ),
                    focusedBorder: UnderlineInputBorder(borderSide: BorderSide(color: Colors.white)),
                  ),
                ),
              ),
               
               SizedBox(
                height: MediaQuery.of(context).size.height * 0.055,
              ),
              
              GestureDetector(
                onTap: () {},
                child: Container(
                  width: MediaQuery.of(context).size.width * 0.3,
                  padding: EdgeInsets.all(
                    MediaQuery.of(context).size.width * 0.02,
                  ),
                  decoration: const BoxDecoration(
                      color: Color(0xff74A2C3),
                      borderRadius: BorderRadius.all(Radius.circular(20)),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.black26,
                          offset: Offset(3, 3),
                          blurRadius: 5,
                        )
                      ]),
                  child: Center(
                    child: Text(
                      'Kaydet',
                      style: TextStyle(color: Colors.white, fontSize: MediaQuery.of(context).size.width * 0.04),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
