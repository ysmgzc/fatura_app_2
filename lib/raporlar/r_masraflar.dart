import 'package:dropdown_button2/dropdown_button2.dart';
import 'package:fatura_app_2/constants.dart';
import 'package:fatura_app_2/hesaplar/hesaplar.dart';
import "package:flutter/material.dart";
import 'package:intl/intl.dart';
class MasrafRaporu extends StatefulWidget {
  const MasrafRaporu({super.key});

  @override
  State<MasrafRaporu> createState() => _MasrafRaporuState();
}

class _MasrafRaporuState extends State<MasrafRaporu> {
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
    'Araç Giderleri',
    'İşletme Giderleri',
    'Personel Giderleri',
  ];
  List<String> items1 = [
   'Hepsi',
];
  List<String> items2 = [
    'Hepsi',
    'Ödenmişler',
    'Ödenecekler',
    'Tarihi Geçenler',
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
                'Masraf Raporu',
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
              
              rmasraflarcontainer("Başlangıç Tarihi: "),
              rmasraflarcontainer("Bitiş Tarihi: "),
              
               rmasraflarcontainer1('Ana Masraf',items0),
               rmasraflarcontainer1('Alt Masraflar',items1),
            
            
                Container(
                   width: MediaQuery.of(context).size.width*0.8,
                   alignment: Alignment.center,
                  child: GestureDetector(
                  onTap: () {
                    Navigator.of(context).push(
                            MaterialPageRoute(builder: (context) => const HesaplarScreen()));
                  },
                  
                  child: Container(
                      decoration: const BoxDecoration(
                        border: Border(
                          bottom: BorderSide(
                            width: 2.0, 
                            color: Colors.white60))),
                    child: const ListTile(
                      title: Padding(
                        padding: EdgeInsets.only(left: 1),
                        child: Text(
                           textAlign: TextAlign.start,
                          "Ödenen Hesap",style: TextStyle(
                            fontSize: 15.5,
                            color: kTextColor,
                          ),
                        ),
                      ),
                      trailing:Icon(Icons.navigate_next, color: kIconColor, )
                  )
                    /* Text(
                        textAlign: TextAlign.start,
                        'Ödenen Hesap',
                        style: TextStyle(
                          fontSize: 15.5,
                          color: ktextColor,
                        ),
                      ), */   
                             
                     ),
                ),
                ),
                 rmasraflarcontainer1('Ödeme Durumu',items2),
               
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

  Container rmasraflarcontainer1(String text,List item) {
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

  Container rmasraflarcontainer(String text) {
    return Container(
              width: MediaQuery.of(context).size.width * 0.8,
              alignment: Alignment.center,
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
                decoration:  InputDecoration(
                  contentPadding:const EdgeInsets.only(left: 10, top: 10, bottom: 15),
                  suffixIcon:const Icon(Icons.date_range,color: kIconColor,),
                  prefixIcon: Padding(
                      padding:const EdgeInsets.only(top: 12),
                      child: Text(
                        text,
                        style:const TextStyle(color: kTextColor),
                      )),
                  enabledBorder:const UnderlineInputBorder(
                    borderSide: BorderSide(color: kBorderColor),
                  ),
                  focusedBorder:const UnderlineInputBorder(borderSide: BorderSide(color: kBorderColor)),
                ),
              ),
            );
  }
}
