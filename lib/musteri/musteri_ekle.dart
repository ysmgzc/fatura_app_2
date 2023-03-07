import 'package:fatura_app_2/constants.dart';
import "package:flutter/material.dart";

class MusteriEkle extends StatefulWidget {
  const MusteriEkle({super.key});

  @override
  State<MusteriEkle> createState() => _MusteriEkleState();
}

class _MusteriEkleState extends State<MusteriEkle> {
  @override
  Widget build(BuildContext context) {
    
    return Scaffold(
      body: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        decoration: const BoxDecoration(
           image:  DecorationImage(
            image:  AssetImage("assets/images/loggin2.png"),
            fit: BoxFit.cover,
          ),
        ),
        child:SingleChildScrollView(
            child: Column(
              children: [
                SizedBox(height: MediaQuery.of(context).size.height*0.1,),
                Text(
                  'Yeni Müşteri Ekle',
                  style: TextStyle(
                      color: kTextColor,
                      fontSize: MediaQuery.of(context).size.width*0.07,
                      fontWeight: FontWeight.bold,
                      shadows: const [BoxShadow(color: Colors.black, offset: Offset(1,2),blurRadius: 3 ),],
                  ),
                ),
                SizedBox(height: MediaQuery.of(context).size.height*0.05,),
                musterieklecontainer(Icons.person,"Müsteri Ünvanı"),
                musterieklecontainer(Icons.phone,"Telefon"),
                musterieklecontainer(Icons.home_filled,"Adres"),
                musterieklecontainer(Icons.business,"Vergi Dairesi"),
                musterieklecontainer(Icons.more_horiz,"Vergi/TC Kimlik No"),
                musterieklecontainer( Icons.email_outlined,"E-posta"),
                
                
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
                      child: Text('Ekle',
                      style: TextStyle(color: kTextColor,
                      fontSize: MediaQuery.of(context).size.width*0.04),),),
                  ),
                ),
                
              ],
            ),
          ),
        ),
    );
  }

  Container musterieklecontainer(IconData icon, String text) {
    return Container(
                width: MediaQuery.of(context).size.width*0.8,
                child: TextFormField(
                  style:const TextStyle(
                          height: 1.5,
                          ),
                  decoration: InputDecoration(
                    contentPadding:const
                    EdgeInsets.only(left: 10, top: 10, bottom: 15),
                     prefixIcon: Padding(
                       padding:const EdgeInsets.only(top: 17),
                       child: Icon(
                            icon,
                            color: kIconColor,
                                ),
                     ),
                enabledBorder:const UnderlineInputBorder(      
                    borderSide: BorderSide(color: kBorderColor),   
                    ),  
                 focusedBorder:const UnderlineInputBorder(
                  
                    borderSide: BorderSide(color: kBorderColor) 
                    ),
                  label: Center(
                  child: Text(text),
                ), 
                labelStyle:const TextStyle(
                 
                  color: kTextColor,
                ),
                
                  ),
                ),
                
              );
  }
}