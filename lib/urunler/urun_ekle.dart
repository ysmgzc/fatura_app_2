import 'package:fatura_app_2/constants.dart';
import "package:flutter/material.dart";
import 'package:dropdown_button2/dropdown_button2.dart';

class UrunEkle extends StatefulWidget {
  const UrunEkle({super.key});

  @override
  State<UrunEkle> createState() => _UrunEkleState();
}

class _UrunEkleState extends State<UrunEkle> {
  bool? value = true;
  String? selectedValue = '';
  List<String> items = [
    'Adet',
    'kg',
    'litre',
    'kutu',
  ];
  List<String> items1 = [
    '8',
    '15',
    '18',
    '1',
    '0',
  ];
  List<String> items2 = [
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
                'Yeni Ürün Ekle',
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
              uruneklecontainer(context, Icons.code, "Ürün Kodu"),
              uruneklecontainer(context, Icons.text_rotate_vertical, "Ürün Adı"),
              Container(
                width: MediaQuery.of(context).size.width * 0.8,
                alignment: Alignment.center,
                child: Padding(
                  padding: const EdgeInsets.only(top: 15),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      uruneklecontainer1('Birim', items),
                      uruneklecontainer1('Kdv(%)', items1),
                      uruneklecontainer1('Para Birimi', items2),
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.05,
              ),
              Text(
                'Satış Fiyatı',
                style: TextStyle(
                  decoration: TextDecoration.underline,
                  decorationColor: Colors.white60,
                  decorationThickness: 3,
                  color: kTextColor,
                  fontSize: MediaQuery.of(context).size.width * 0.04,
                  fontWeight: FontWeight.bold,
                  shadows: const [
                    BoxShadow(color: Colors.black, offset: Offset(1, 2), blurRadius: 3),
                  ],
                ),
              ),
              uruneklecontainer(context, Icons.money, "Birim Fiyat (KDV Dahil)"),
              uruneklecontainer(context, Icons.money, "Birim Fiyat (KDV Hariç)"),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.05,
              ),
              Text(
                'Alış Fiyatı',
                style: TextStyle(
                  decoration: TextDecoration.underline,
                  decorationColor: Colors.white60,
                  decorationThickness: 3,
                  color: kTextColor,
                  fontSize: MediaQuery.of(context).size.width * 0.04,
                  fontWeight: FontWeight.bold,
                  shadows: const [
                    BoxShadow(color: Colors.black, offset: Offset(1, 2), blurRadius: 3),
                  ],
                ),
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
                    value: this.value,
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
                            style: TextStyle(color: kTextColor, decoration: TextDecoration.underline),
                          ),
                        )
                      ],
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.055,
              ),
              GestureDetector(
                onTap: () {},
                child: Container(
                  width: MediaQuery.of(context).size.width * 0.4,
                  padding: EdgeInsets.all(
                    MediaQuery.of(context).size.width * 0.02,
                  ),
                  decoration:
                      const BoxDecoration(color: kButtonColor, borderRadius: BorderRadius.all(Radius.circular(20)), boxShadow: [
                    BoxShadow(
                      color: Colors.black26,
                      offset: Offset(3, 3),
                      blurRadius: 5,
                    )
                  ]),
                  child: Center(
                    child: Text(
                      'Kaydet',
                      style: TextStyle(color: kTextColor, fontSize: MediaQuery.of(context).size.width * 0.04),
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.055,
              ),
            ],
          ),
        ),
      ),
    );
   
  }

  DropdownButton2<String> uruneklecontainer1(String text, List item) {
    return DropdownButton2(
      icon: const Icon(
        Icons.expand_more,
        color: kIconColor,
      ),
      underline: Container(height: 2, color: Colors.white60),
      hint: Text(
        textAlign: TextAlign.center,
        text,
        style: const TextStyle(
          fontSize: 15.5,
          color: kTextColor,
        ),
      ),
      items: item
          .map((item) => DropdownMenuItem<String>(
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
      onChanged: (value) async {
        setState(() {
          selectedValue = value as String; //= kaldır
        });
      },
      buttonHeight: 40,
      buttonWidth: 100,
      itemHeight: 40,
      //itemWidth: 140,
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
            color: kTextColor,
          ),
        ),
      ),
    );
  }
}
