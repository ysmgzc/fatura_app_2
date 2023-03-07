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
  String? selectedValue;
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
        decoration:const BoxDecoration(
           image: DecorationImage(
            image: AssetImage("assets/images/loggin2.png"),
            fit: BoxFit.cover,
          ),
        ),
        child: SingleChildScrollView(
            child: Column(
              children: [
                SizedBox(height: MediaQuery.of(context).size.height*0.1,),
                Text(
                  'Yeni Ürün Ekle',
                  style: TextStyle(
                      color: kTextColor,
                      fontSize: MediaQuery.of(context).size.width*0.07,
                      fontWeight: FontWeight.bold,
                      shadows:const [BoxShadow(color: Colors.black, offset: Offset(1,2),blurRadius: 3 ),],
                  ),
                ),
                SizedBox(height: MediaQuery.of(context).size.height*0.05,),
                Container(
                  width: MediaQuery.of(context).size.width*0.8,
                  child: TextFormField(
                    style:const TextStyle(
                            height: 1.5,
                            ),
                    decoration:const InputDecoration(
                      contentPadding:
                      EdgeInsets.only(left: 10, top: 10, bottom: 15),
                       prefixIcon: Padding(
                         padding: EdgeInsets.only(top: 17),
                         child: Icon(
                              Icons.code,
                              color: kIconColor,
                                  ),
                       ),
                  enabledBorder: UnderlineInputBorder(      
                      borderSide: BorderSide(color: kBorderColor),   
                      ),  
                   focusedBorder: UnderlineInputBorder(
                    
                      borderSide: BorderSide(color: kBorderColor) 
                      ),
                    label: Center(
                    child: Text("Ürün Kodu"),
                  ), 
                  labelStyle: TextStyle(
                   
                    color: kTextColor,
                  ),
                  
                    ),
                  ),
                  
                ),
               // SizedBox(height: MediaQuery.of(context).size.height*0.02,),
                Container(
                  width: MediaQuery.of(context).size.width*0.8,
                  child: TextFormField(
                    style:const TextStyle(
                            height: 1.5,
                            ),
                    decoration:const InputDecoration(
                      contentPadding:
                      EdgeInsets.only(left: 10, top: 10, bottom: 15),
                       prefixIcon: Padding(
                         padding: EdgeInsets.only(top: 17),
                         child: Icon(
                              Icons.text_rotate_vertical,
                              color: kIconColor,
                                  ),
                       ),
                  enabledBorder: UnderlineInputBorder(      
                      borderSide: BorderSide(color: kBorderColor),   
                      ),  
                   focusedBorder: UnderlineInputBorder(
                    
                      borderSide: BorderSide(color: kBorderColor) 
                      ),
                    label: Center(
                    child: Text("Ürün Adı"),
                  ), 
                  labelStyle: TextStyle(
                   
                    color: kTextColor,
                  ),
                  
                    ),
                  ),
                  
                ),
               //  SizedBox(height: MediaQuery.of(context).size.height*0.02,),
                Container(
                  width: MediaQuery.of(context).size.width*0.8,
                  child: Padding(
                    padding:const EdgeInsets.only( top: 15),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: 
                     [    
                        DropdownButton2(
                          icon:const Icon(Icons.expand_more, color: kIconColor,),
                          underline: Container( 
                           height: 2, color: Colors.white60 ),
                          hint:const Text(
                            textAlign: TextAlign.center,
                            'Birim',
                            style: TextStyle(
                              fontSize: 15.5,
                              color: kTextColor,
                            ),
                          ),
                          items: items
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
                          buttonWidth: 90,
                          itemHeight: 40,
                          //itemWidth: 140,
                        ),
                        
                        DropdownButton2(
                         icon:const Icon(Icons.expand_more, color: kIconColor,),
                          underline: Container(  
                            height: 2, color: Colors.white60),
                            
                          hint:const Text(
                            'Kdv(%)',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              fontSize: 15.5,
                              color: kTextColor
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
                          buttonWidth: 90,
                          itemHeight: 40,
                        // itemWidth: 140,
                        ),
                        
                        DropdownButton2(
                          icon:const Icon(Icons.expand_more, color: kIconColor,),
                          underline: Container( height: 2, color: Colors.white60),
                          hint:const Text(
                            'Para Birimi',
                            textAlign: TextAlign.center,
                            
                            style: TextStyle(
                              fontSize: 15.5,
                              color: kTextColor
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
                          buttonWidth: 120,
                          itemHeight: 40,
                          //itemWidth: 140,
                        ),
                        
                    ],
                              ),
                  ),
                ),
                 SizedBox(height: MediaQuery.of(context).size.height*0.05,),
                Text(
                  'Satış Fiyatı',
                  style: TextStyle(
                      decoration: TextDecoration.underline,
                      decorationColor: Colors.white60,
                      decorationThickness: 3,
                      color: kTextColor,
                      fontSize: MediaQuery.of(context).size.width*0.04,
                      fontWeight: FontWeight.bold,
                      shadows:const [BoxShadow(color: Colors.black, offset: Offset(1,2),blurRadius: 3 ),],
                  ),
                  
                ),

                Container(
                  width: MediaQuery.of(context).size.width*0.8,
                  child: TextFormField(
                    style:const TextStyle(
                            height: 1.5,
                            ),
                    decoration:const InputDecoration(
                      contentPadding:
                      EdgeInsets.only(left: 10, top: 10, bottom: 15),
                       prefixIcon: Padding(
                         padding: EdgeInsets.only(top: 17),
                         child: Icon(
                              Icons.money,
                              color: kIconColor,
                                  ),
                       ),
                  enabledBorder: UnderlineInputBorder(      
                      borderSide: BorderSide(color: kBorderColor),   
                      ),  
                   focusedBorder: UnderlineInputBorder(
                    
                      borderSide: BorderSide(color: kBorderColor) 
                      ),
                    label: Center(
                    child: Text("Birim Fiyat (KDV Dahil)"),
                  ), 
                  labelStyle: TextStyle(
                   
                    color: kTextColor,
                  ),
                  
                    ),
                  ),
                  
                ),
                // SizedBox(height: MediaQuery.of(context).size.height*0.02,),
                Container(
                  width: MediaQuery.of(context).size.width*0.8,
                  child: TextFormField(
                    style:const TextStyle(
                            height: 1.5,
                            ),
                    decoration:const InputDecoration(
                      contentPadding:
                      EdgeInsets.only(left: 10, top: 10, bottom: 15),
                       prefixIcon: Padding(
                         padding: EdgeInsets.only(top: 17),
                         child: Icon(
                              Icons.money,
                              color: kIconColor,
                                  ),
                       ),
                  enabledBorder: UnderlineInputBorder(      
                      borderSide: BorderSide(color: kBorderColor),   
                      ),  
                   focusedBorder: UnderlineInputBorder(
                    
                      borderSide: BorderSide(color: kBorderColor) 
                      ),
                    label: Center(
                    child: Text("Birim Fiyat (KDV Hariç)"),
                  ), 
                  labelStyle: TextStyle(
                   
                    color: kTextColor,
                  ),
                  
                    ),
                  ),
                  
                ),
                SizedBox(height: MediaQuery.of(context).size.height*0.05,),
                Text(
                  'Alış Fiyatı',
                  style: TextStyle(
                    decoration: TextDecoration.underline,
                      decorationColor: Colors.white60,
                      decorationThickness: 3,
                      color: kTextColor,
                      fontSize: MediaQuery.of(context).size.width*0.04,
                      fontWeight: FontWeight.bold,
                      shadows:const [BoxShadow(color: Colors.black, offset: Offset(1,2),blurRadius: 3 ),],
                  ),
                ),
                Container(
                  width: MediaQuery.of(context).size.width*0.8,
                  child: TextFormField(
                    style:const TextStyle(
                            height: 1.5,
                            ),
                    decoration:const InputDecoration(
                      contentPadding:
                      EdgeInsets.only(left: 10, top: 10, bottom: 15),
                       prefixIcon: Padding(
                         padding: EdgeInsets.only(top: 17),
                         child: Icon(
                              Icons.money,
                              color: kIconColor,
                                  ),
                       ),
                  enabledBorder: UnderlineInputBorder(      
                      borderSide: BorderSide(color: kBorderColor),   
                      ),  
                   focusedBorder: UnderlineInputBorder(
                    
                      borderSide: BorderSide(color: kBorderColor) 
                      ),
                    label: Center(
                    child: Text("Birim Fiyat (KDV Dahil)"),
                  ), 
                  labelStyle: TextStyle(
                   
                    color: kTextColor,
                  ),
                  
                    ),
                  ),
                  
                ),
                // SizedBox(height: MediaQuery.of(context).size.height*0.02,),
                Container(
                  width: MediaQuery.of(context).size.width*0.8,
                  child: TextFormField(
                    style:const TextStyle(
                            height: 1.5,
                            ),
                    decoration:const InputDecoration(
                      contentPadding:
                      EdgeInsets.only(left: 10, top: 10, bottom: 15),
                       prefixIcon: Padding(
                         padding: EdgeInsets.only(top: 17),
                         child: Icon(
                              Icons.money,
                              color: kIconColor,
                                  ),
                       ),
                  enabledBorder: UnderlineInputBorder(      
                      borderSide: BorderSide(color: kBorderColor),   
                      ),  
                   focusedBorder: UnderlineInputBorder(
                    
                      borderSide: BorderSide(color:kBorderColor) 
                      ),
                    label: Center(
                    child: Text("Birim Fiyat (KDV Hariç)"),
                  ), 
                  labelStyle: TextStyle(
                   
                    color: kTextColor,
                  ),
                  
                    ),
                  ),
                  
                ),
                Container(
                  width: MediaQuery.of(context).size.width*0.8,
                  child: TextFormField(
                    style:const TextStyle(
                            height: 1.5,
                            ),
                    decoration:const InputDecoration(
                      contentPadding:
                      EdgeInsets.only(left: 10, top: 10, bottom: 15),
                       prefixIcon: Padding(
                         padding: EdgeInsets.only(top: 17),
                         child: Icon(
                              Icons.barcode_reader,
                              color: kIconColor,
                                  ),
                       ),
                  enabledBorder: UnderlineInputBorder(      
                      borderSide: BorderSide(color: kBorderColor),   
                      ),  
                   focusedBorder: UnderlineInputBorder(
                    
                      borderSide: BorderSide(color: kBorderColor) 
                      ),
                    label: Center(
                    child: Text("Barkod:"),
                  ), 
                  labelStyle: TextStyle(
                   
                    color: kTextColor,
                  ),
                  
                    ),
                  ),
                  
                ),
               //  SizedBox(height: MediaQuery.of(context).size.height*0.02,),
                Container(
                  width: MediaQuery.of(context).size.width*0.8,
                  child: TextFormField(
                    style:const TextStyle(
                            height: 1.5,
                            ),
                    decoration:const InputDecoration(
                      contentPadding:
                      EdgeInsets.only(left: 10, top: 10, bottom: 15),
                       prefixIcon: Padding(
                         padding:  EdgeInsets.only(top: 17),
                         child: Icon(
                              Icons.sync_alt,
                              color: kIconColor,
                                  ),
                       ),
                  enabledBorder: UnderlineInputBorder(      
                      borderSide: BorderSide(color: kBorderColor),   
                      ),  
                   focusedBorder: UnderlineInputBorder(
                    
                      borderSide: BorderSide(color: kBorderColor) 
                      ),
                    label:  Center(
                    child: Text("Ürün Adı(2): "),
                  ), 
                  labelStyle: TextStyle(
                   
                    color: kTextColor,
                  ),
                  
                    ),
                  ),
                  
                ),
                 SizedBox(height: MediaQuery.of(context).size.height*0.03,),
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
              width: MediaQuery.of(context).size.width*0.8,
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
                child:const Text(
                  "Aktif mi?",
                  style: TextStyle(color: kTextColor,decoration: TextDecoration.underline),
                ),
              )
                  ],
                              ),
                ),
         ],
         
       ),
                SizedBox(height: MediaQuery.of(context).size.height*0.055,),
                GestureDetector(
                  onTap: () {
                   
                  },
                  child: Container(
                    width: MediaQuery.of(context).size.width*0.4,
                    padding: EdgeInsets.all(MediaQuery.of(context).size.width*0.02,),
                    decoration:const BoxDecoration(
                      color: kButtonColor,
                      borderRadius: BorderRadius.all(Radius.circular(20)),
                      boxShadow: [BoxShadow(color: Colors.black26,
                      offset: Offset(3, 3),
                      blurRadius: 5,
                      )]
                    ),
                    child: Center(
                      child: Text('Kaydet',
                      style: TextStyle(color: kTextColor,
                      fontSize: MediaQuery.of(context).size.width*0.04),),),
                  ),
                ),
                SizedBox(height: MediaQuery.of(context).size.height*0.055,),
              ],
            ),
          ),
        ),
    );
  }
}