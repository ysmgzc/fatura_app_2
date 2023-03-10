import 'package:dropdown_button2/dropdown_button2.dart';
import 'package:fatura_app_2/constants.dart';
import "package:flutter/material.dart";

class DepoStokRaporu extends StatefulWidget {
  const DepoStokRaporu({super.key});

  @override
  State<DepoStokRaporu> createState() => _DepoStokRaporuState();
}

class _DepoStokRaporuState extends State<DepoStokRaporu> {
  TextEditingController dateInput = TextEditingController();
  @override
  void initState() {
    dateInput.text = ""; //set the initial value of text field
    super.initState();
  }
 bool? value = false;
  String? selectedValue;
  List<String> items0 = [
    'Hepsi',
    'Örnek Kategori',
  ];
  List<String> items1 = [
   'Hepsi',
   'Örnek Marka',
];
  List<String> items2 = [
    'Stokta Olanları Göster',
    'Stokta Olmayanları Göster',
    'Kritik Stok',
    'Tümü'
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
                'Depo Stok Raporu',
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
             
              rdepostokcontainer('Kategori',items0),
              rdepostokcontainer('Marka',items1),
              rdepostokcontainer('Stok Durumu',items2),
               
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
                      color: kButtonColor,
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
                      'Rapor Oluştur',
                      style: TextStyle(color: kTextColor, fontSize: MediaQuery.of(context).size.width * 0.04),
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

  Container rdepostokcontainer(String text,List item) {
    return Container(
                width: MediaQuery.of(context).size.width*0.8,
                alignment: Alignment.center,
                child: Padding(
                  padding:const EdgeInsets.only( top: 15),
                  child: DropdownButton2(
                    icon:const Icon(Icons.expand_more, color: kIconColor,),
                    underline: Container( 
                     height: 2, color: Colors.white60 ),
                    hint: Text(
                      textAlign: TextAlign.start,
                      text,
                      style:const TextStyle(
                        fontSize: 15.5,
                        color: kTextColor,
                      ),
                    ),
                    items: item
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
              );
  }
}
