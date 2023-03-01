import "package:flutter/material.dart";
import 'package:dropdown_button2/dropdown_button2.dart';

class UrunEkle extends StatefulWidget {
  const UrunEkle({super.key});

  @override
  State<UrunEkle> createState() => _UrunEkleState();
}

class _UrunEkleState extends State<UrunEkle> {
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
        decoration: BoxDecoration(
           image: DecorationImage(
            image: AssetImage("assets/images/loggin2.png"),
            fit: BoxFit.cover,
          ),
        ),
        child: Container(
          child: SingleChildScrollView(
            child: Column(
              children: [
                SizedBox(height: MediaQuery.of(context).size.height*0.1,),
                Text(
                  'Yeni Ürün Ekle',
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: MediaQuery.of(context).size.width*0.07,
                      fontWeight: FontWeight.bold,
                      shadows: [BoxShadow(color: Colors.black, offset: Offset(1,2),blurRadius: 3 ),],
                  ),
                ),
                SizedBox(height: MediaQuery.of(context).size.height*0.05,),
                Container(
                  width: MediaQuery.of(context).size.width*0.8,
                  child: TextFormField(
                    style: TextStyle(
                            height: 1.5,
                            ),
                    decoration: InputDecoration(
                      contentPadding:
                      EdgeInsets.only(left: 10, top: 10, bottom: 15),
                       prefixIcon: Padding(
                         padding: const EdgeInsets.only(top: 17),
                         child: Icon(
                              Icons.person,
                              color: Colors.white,
                                  ),
                       ),
                  enabledBorder: UnderlineInputBorder(      
                      borderSide: BorderSide(color: Colors.white),   
                      ),  
                   focusedBorder: UnderlineInputBorder(
                    
                      borderSide: BorderSide(color: Colors.white) 
                      ),
                    label: const Center(
                    child: Text("Ürün Kodu"),
                  ), 
                  labelStyle: TextStyle(
                   
                    color: Colors.white,
                  ),
                  
                    ),
                  ),
                  
                ),
               // SizedBox(height: MediaQuery.of(context).size.height*0.02,),
                Container(
                  width: MediaQuery.of(context).size.width*0.8,
                  child: TextFormField(
                    style: TextStyle(
                            height: 1.5,
                            ),
                    decoration: InputDecoration(
                      contentPadding:
                      EdgeInsets.only(left: 10, top: 10, bottom: 15),
                       prefixIcon: Padding(
                         padding: const EdgeInsets.only(top: 17),
                         child: Icon(
                              Icons.phone,
                              color: Colors.white,
                                  ),
                       ),
                  enabledBorder: UnderlineInputBorder(      
                      borderSide: BorderSide(color: Colors.white),   
                      ),  
                   focusedBorder: UnderlineInputBorder(
                    
                      borderSide: BorderSide(color: Colors.white) 
                      ),
                    label: const Center(
                    child: Text("Ürün Adı"),
                  ), 
                  labelStyle: TextStyle(
                   
                    color: Colors.white,
                  ),
                  
                    ),
                  ),
                  
                ),
               //  SizedBox(height: MediaQuery.of(context).size.height*0.02,),
                Container(
                  width: MediaQuery.of(context).size.width*0.8,
                  child: TextFormField(
                    style: TextStyle(
                            height: 1.5,
                            ),
                    decoration: InputDecoration(
                      contentPadding:
                      EdgeInsets.only(left: 10, top: 10, bottom: 15),
                       prefixIcon: Padding(
                         padding: const EdgeInsets.only(top: 17),
                         child: Icon(
                              Icons.home_filled,
                              color: Colors.white,
                                  ),
                       ),
                  enabledBorder: UnderlineInputBorder(      
                      borderSide: BorderSide(color: Colors.white),   
                      ),  
                   focusedBorder: UnderlineInputBorder(
                    
                      borderSide: BorderSide(color: Colors.white) 
                      ),
                    label: const Center(
                    child: Text("Adres"),
                  ), 
                  labelStyle: TextStyle(
                   
                    color: Colors.white,
                  ),
                  
                    ),
                  ),
                  
                ),
               //  SizedBox(height: MediaQuery.of(context).size.height*0.02,),
                Container(
                  width: MediaQuery.of(context).size.width*0.8,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: 
                   [    
                      DropdownButton2(
                        underline: Container( 
                          height: 0.75, 
                        color: Colors.white, ),
                        hint: Text(
                          textAlign: TextAlign.center,
                          'Birim',
                          style: TextStyle(
                            fontSize: 14,
                            color: Colors.grey.shade400,
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
                        underline: Container(  
                          height: 0.75, color: Colors.cyan.shade700),
                          
                        hint: Text(
                          'Kdv(%)',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            fontSize: 14,
                            color: Colors.grey.shade400
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
                        buttonWidth: 70,
                        itemHeight: 40,
                      // itemWidth: 140,
                      ),
                      
                      DropdownButton2(
                        underline: Container( height: 0.75,   color: Colors.cyan.shade700),
                        hint: Text(
                          'Para Birimi',
                          textAlign: TextAlign.center,
                          
                          style: TextStyle(
                            fontSize: 14,
                            color: Colors.grey.shade400
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
                Container(
                  width: MediaQuery.of(context).size.width*0.8,
                  child: TextFormField(
                    style: TextStyle(
                            height: 1.5,
                            ),
                    decoration: InputDecoration(
                      contentPadding:
                      EdgeInsets.only(left: 10, top: 10, bottom: 15),
                       prefixIcon: Padding(
                         padding: const EdgeInsets.only(top: 17),
                         child: Icon(
                              Icons.business,
                              color: Colors.white,
                                  ),
                       ),
                  enabledBorder: UnderlineInputBorder(      
                      borderSide: BorderSide(color: Colors.white),   
                      ),  
                   focusedBorder: UnderlineInputBorder(
                    
                      borderSide: BorderSide(color: Colors.white) 
                      ),
                    label: const Center(
                    child: Text("Vergi Dairesi"),
                  ), 
                  labelStyle: TextStyle(
                   
                    color: Colors.white,
                  ),
                  
                    ),
                  ),
                  
                ),
                // SizedBox(height: MediaQuery.of(context).size.height*0.02,),
                Container(
                  width: MediaQuery.of(context).size.width*0.8,
                  child: TextFormField(
                    style: TextStyle(
                            height: 1.5,
                            ),
                    decoration: InputDecoration(
                      contentPadding:
                      EdgeInsets.only(left: 10, top: 10, bottom: 15),
                       prefixIcon: Padding(
                         padding: const EdgeInsets.only(top: 17),
                         child: Icon(
                              Icons.more_horiz,
                              color: Colors.white,
                                  ),
                       ),
                  enabledBorder: UnderlineInputBorder(      
                      borderSide: BorderSide(color: Colors.white),   
                      ),  
                   focusedBorder: UnderlineInputBorder(
                    
                      borderSide: BorderSide(color: Colors.white) 
                      ),
                    label: const Center(
                    child: Text("Vergi/TC Kimlik No"),
                  ), 
                  labelStyle: TextStyle(
                   
                    color: Colors.white,
                  ),
                  
                    ),
                  ),
                  
                ),
               //  SizedBox(height: MediaQuery.of(context).size.height*0.02,),
                Container(
                  width: MediaQuery.of(context).size.width*0.8,
                  child: TextFormField(
                    style: TextStyle(
                            height: 1.5,
                            ),
                    decoration: InputDecoration(
                      contentPadding:
                      EdgeInsets.only(left: 10, top: 10, bottom: 15),
                       prefixIcon: Padding(
                         padding: const EdgeInsets.only(top: 17),
                         child: Icon(
                              Icons.email_outlined,
                              color: Colors.white,
                                  ),
                       ),
                  enabledBorder: UnderlineInputBorder(      
                      borderSide: BorderSide(color: Colors.white),   
                      ),  
                   focusedBorder: UnderlineInputBorder(
                    
                      borderSide: BorderSide(color: Colors.white) 
                      ),
                    label: const Center(
                    child: Text("E-posta"),
                  ), 
                  labelStyle: TextStyle(
                   
                    color: Colors.white,
                  ),
                  
                    ),
                  ),
                  
                ),
                
                SizedBox(height: MediaQuery.of(context).size.height*0.055,),
                GestureDetector(
                  onTap: () {
                   
                  },
                  child: Container(
                    width: MediaQuery.of(context).size.width*0.4,
                    padding: EdgeInsets.all(MediaQuery.of(context).size.width*0.02,),
                    decoration: BoxDecoration(
                      color: Color(0xff74A2C3),
                      borderRadius: BorderRadius.all(Radius.circular(20)),
                      boxShadow: [BoxShadow(color: Colors.black26,
                      offset: Offset(3, 3),
                      blurRadius: 5,
                      )]
                    ),
                    child: Center(
                      child: Text('Ekle',
                      style: TextStyle(color: Colors.white,
                      fontSize: MediaQuery.of(context).size.width*0.04),),),
                  ),
                ),
                
              ],
            ),
          ),
        ),
      ),
    );
  }
}