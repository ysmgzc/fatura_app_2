import 'package:dropdown_button2/dropdown_button2.dart';
import 'package:fatura_app_2/constants.dart';
import "package:flutter/material.dart";
import 'package:intl/intl.dart';

import '../urunler/urunler_screen.dart';

class ManuelMasraf extends StatefulWidget {
  const ManuelMasraf({super.key});

  @override
  State<ManuelMasraf> createState() => _ManuelMasrafState();
}

class _ManuelMasrafState extends State<ManuelMasraf> {
  TextEditingController dateInput = TextEditingController();
  @override
  void initState() {
    dateInput.text = ""; //set the initial value of text field
    super.initState();
  }
 bool? value = false;
  String? selectedValue;
  List<String> items0 = [
  'Ödendi',
  'Ödenmedi',
 'Daha sonra ödenecek',
  ];
  List<String> items1 = [
    'Kasa',
    'Banka TL Hesabı',
    'Banka USD Hesabı',
    'Banka EUR Hesabı',
    'Kredi Kartı',
  ];
  List<String> items2 = [
  '%0',
  '%1',
  '%18',
  '%20',
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
                'Manuel Masraf Girişi',
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
                child: TextField(
                  controller: dateInput,
                  readOnly: false,
                  //kullanıcının tarihi güncellemesi
                  onTap: () async {
                    DateTime? pickedDate = await showDatePicker(
                        context: context,
                        initialDate: DateTime.now(),
                        firstDate: DateTime(1950),
                        //DateTime.now() //bugunden baslatmak
                        lastDate: DateTime(2100));

                    if (pickedDate != null) {
                      print(pickedDate);
                      String formattedDate = DateFormat('dd-MM-yyyy').format(pickedDate);
                      print(formattedDate); //formatted date output using intl package =>  2021-03-16
                      setState(() {
                        dateInput.text = 
                        formattedDate;
                      });
                    } else {}
                  },
                  style: const TextStyle(
                    height: 1.5,
                  ),
                  decoration: const InputDecoration(
                    contentPadding: EdgeInsets.only(left: 10, top: 10, bottom: 15),
                    suffixIcon: Icon(Icons.date_range,color: Colors.white,),
                    prefixIcon: Padding(
                        padding: EdgeInsets.only(top: 12),
                        child: Text(
                          "Ödeme Tarihi: ",
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
                        'Durumu',
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
                        'Ödenen Hesap',
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
                          "Tutar: ",
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
                        'KDV Oranı(%)',
                        style: TextStyle(
                          fontSize: 15.5,
                          color: ktextColor,
                        ),
                      ),
                      items: items2
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
                          "Açıklama: ",
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
