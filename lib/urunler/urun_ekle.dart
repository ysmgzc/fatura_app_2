import 'package:fatura_app_2/constants.dart';
import 'package:fatura_app_2/urunler/urunler_screen.dart';
import "package:flutter/material.dart";

class UrunEkle extends StatefulWidget {
  const UrunEkle({super.key});

  @override
  State<UrunEkle> createState() => _UrunEkleState();
}

class _UrunEkleState extends State<UrunEkle> {
  bool? value = true;
  String? selectedValue1;
List<String> items1 = <String>[
  'Adet',
  'kg',
  'litre',
  'kutu',
];
   String? selectedValue2;
List<String> items2 = <String>[
  '8',
  '15',
  '18',
  '1',
  '0',
];
String? selectedValue3;
  List<String> items3 = <String>[
  'TL',
  'AZM',
  'CHF',
  'CNY',
  'EUR',
  'USD',
  'KGS',
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
                'Yeni Ürün-Stok Ekle',
                style: TextStyle(
                  color: kTextColor,
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
              uruneklecontainer(context, Icons.code, "Stok Kodu"),
              uruneklecontainer(context, Icons.text_rotate_vertical, "Stok Adı"),
              Container(
                width: MediaQuery.of(context).size.width * 0.8,
                alignment: Alignment.center,
                child: Padding(
                  padding: const EdgeInsets.only(top: 15),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      DropdownButton(
                        icon: const Icon(
                          Icons.expand_more,
                          color: kIconColor,
                        ),
                        underline: Container(height: 2, color: Colors.white60),
                        hint:const Text(
                          textAlign: TextAlign.center,
                          "Birim",
                          style: kHintTextStyle,
                        ),
                          value: selectedValue1,
                          onChanged: (value) {
                            setState(() {
                              selectedValue1 = value as String;
                            });
                          },
                          items: items1.map((value) {
                            return DropdownMenuItem(
                              value: value,
                              child: Text(value),
                            );
                          }).toList(),),
                          //_______________________________
                          DropdownButton(
                            icon: const Icon(
                          Icons.expand_more,
                          color: kIconColor,
                        ),
                        underline: Container(height: 2, color: Colors.white60),
                        hint:const Text(
                          textAlign: TextAlign.center,
                          "KDV(%)",
                          style: kHintTextStyle,
                        ),
                          value: selectedValue2,
                          onChanged: (value) {
                            setState(() {
                              selectedValue2 = value as String;
                            });
                          },
                          items: items2.map((value) {
                            return DropdownMenuItem(
                              value: value,
                              child: Text(value),
                            );
                          }).toList(),),
                          //______________________________________
                          DropdownButton(
                             icon: const Icon(
                          Icons.expand_more,
                          color: kIconColor,
                        ),
                        underline: Container(height: 2, color: Colors.white60),
                        hint:const Text(
                          textAlign: TextAlign.center,
                          "Para Birimi",
                          style: kHintTextStyle,
                        ),
                          value: selectedValue3,
                          onChanged: (value) {
                            setState(() {
                              selectedValue3 = value as String;
                            });
                          },
                          items: items3.map((value) {
                            return DropdownMenuItem(
                              value: value,
                              child: Text(value),
                            );
                          }).toList(),),
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.05,
              ),
              Text(
                '-Satış Fiyatı-',
                style: TextStyle(
                 // decoration: TextDecoration.underline,
                 // decorationColor: Colors.white60,
                 // decorationThickness: 3,
                  color: kTextColor,
                  fontSize: MediaQuery.of(context).size.width * 0.04,
                  fontWeight: FontWeight.bold,
                  shadows: const [
                    BoxShadow(color: Colors.black, offset: Offset(1, 2), blurRadius: 3),
                  ],
                ),
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.015,
              ),
              uruneklecontainer(context, Icons.money, "Birim Fiyat (KDV Dahil)"),
              uruneklecontainer(context, Icons.money, "Birim Fiyat (KDV Hariç)"),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.05,
              ),
              Text(
                '-Alış Fiyatı-',
                style: TextStyle(
                 // decoration: TextDecoration.underline,
                 // decorationColor: Colors.white60,
                 // decorationThickness: 3,
                  color: kTextColor,
                  fontSize: MediaQuery.of(context).size.width * 0.04,
                  fontWeight: FontWeight.bold,
                  shadows: const [
                    BoxShadow(color: Colors.black, offset: Offset(1, 2), blurRadius: 3),
                  ],
                ),
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.015,
              ),
              uruneklecontainer(context, Icons.money, "Birim Fiyat (KDV Dahil)"),
              uruneklecontainer(context, Icons.money, "Birim Fiyat (KDV Hariç)"),
              uruneklecontainer(context, Icons.barcode_reader, "Barkod:"),
              uruneklecontainer(context, Icons.sync_alt, "Ürün Adı(2): "),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.03,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Checkbox(
                    checkColor: Colors.white,
                    side: MaterialStateBorderSide.resolveWith(
                      (states) => const BorderSide(width: 1.0, color: kBorderColor),
                    ),
                    value: value,
                    onChanged: (bool? value) {
                      setState(() {
                        this.value = value;
                      });
                    },
                  ),
                  Container(
                    width: MediaQuery.of(context).size.width * 0.8,
                    alignment: Alignment.center,
                    child: Row(
                      children: [
                        GestureDetector(
                          onTap: () {
                            /* Navigator.push(
                     context,
                     MaterialPageRoute(
                     builder: (context) =>
                       sozlesme(),
                    ),
                );*/
                          },
                          child: const Text(
                            "Aktif mi?",
                            style: TextStyle(color: kTextColor, decoration: TextDecoration.underline,fontSize: kInputFontSize),
                          ),
                        )
                      ],
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.15,
              ),
            ],
          ),
        ),
      ),
      floatingActionButton: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          FloatingActionButton.extended(
            backgroundColor: kButtonColor,
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const UrunlerScreen(),
                ),
              );
            },
            icon: const Icon(Icons.delete_outline),
            label: const Text('Vazgeç'),
            shape: const StadiumBorder(side: BorderSide(color: kButtonColor, width: 5)),
          ),
          FloatingActionButton.extended(
            backgroundColor: kButtonColor,
            onPressed: () {
              showDialog(
                context: context,
                builder: (context) => AlertDialog(
                  title: const Text('Kaydet'),
                  content: const Text('Kaydetme işleminiz başarılı.'),
                  actions: [
                    ElevatedButton(
                        style: ButtonStyle(
                          backgroundColor: MaterialStateProperty.all(kButtonColor),
                        ),
                        onPressed: () {
                          Navigator.pop(context);
                        },
                        child: const Text('Kapat'))
                  ],
                ),
              );
            },
            icon: const Icon(Icons.save),
            label: const Text('Kaydet'),
            shape: const StadiumBorder(side: BorderSide(color: kButtonColor, width: 5)),
          ),
        ],
      ),
    );
  }

  Container uruneklecontainer(BuildContext context, IconData icon, String text) {
    return Container(
      width: MediaQuery.of(context).size.width * 0.8,
      alignment: Alignment.center,
      child: TextFormField(
        style: const TextStyle(
          height: 1.5,
        ),
        decoration: InputDecoration(
          contentPadding: const EdgeInsets.only(left: 10, top: 10, bottom: 15),
          prefixIcon: Padding(
            padding: const EdgeInsets.only(top: 17),
            child: Icon(
              icon,
              color: kIconColor,
            ),
          ),
          enabledBorder: const UnderlineInputBorder(
            borderSide: BorderSide(color: kBorderColor),
          ),
          focusedBorder: const UnderlineInputBorder(borderSide: BorderSide(color: kBorderColor)),
          label: Center(
            child: Text(text),
          ),
          labelStyle: const TextStyle(
            fontSize: kInputFontSize,
            color: kTextColor,
          ),
        ),
      ),
    );
  }
}
