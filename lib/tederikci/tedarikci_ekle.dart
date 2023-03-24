import 'package:fatura_app_2/constants.dart';
import 'package:fatura_app_2/tederikci/tedarikciler.dart';
import "package:flutter/material.dart";

class TedarikciEkle extends StatefulWidget {
  const TedarikciEkle({super.key});

  @override
  State<TedarikciEkle> createState() => _TedarikciEkleState();
  
}

class _TedarikciEkleState extends State<TedarikciEkle> {

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
                  'Yeni Tedarikçi Ekle',
                  style: TextStyle(
                      color: kTextColor,
                      fontSize: MediaQuery.of(context).size.width*0.07,
                      fontWeight: FontWeight.bold,
                      shadows:const [BoxShadow(color: Colors.black, offset: Offset(1,2),blurRadius: 3 ),],
                  ),
                ),
                SizedBox(height: MediaQuery.of(context).size.height*0.05,),
                tedarikcieklecontainer(context, Icons.person,"Müsteri Ünvanı"),
                tedarikcieklecontainer(context,Icons.phone,"Telefon"),
                tedarikcieklecontainer(context,Icons.home_filled,"Adres"),
                tedarikcieklecontainer(context,Icons.business,"Vergi Dairesi"),
                tedarikcieklecontainer(context,Icons.more_horiz,"Vergi/TC Kimlik No"),
                tedarikcieklecontainer(context, Icons.email_outlined,"E-posta"),
              
                
              /*  SizedBox(height: MediaQuery.of(context).size.height*0.055,),
                GestureDetector(
                  onTap: () {},
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
                ),*/
                
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
                          builder: (context) =>
                            const  TedarikcilerScreen(),
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
                  content:const  Text('Kaydetme işleminiz başarılı.'),
                  actions: [
                    
                    ElevatedButton(
                      style: ButtonStyle(
                        backgroundColor: MaterialStateProperty.all(kButtonColor),
                      ),
                        onPressed: () {
                          Navigator.pop(context);
                        },
                        child:const Text('Kapat')
                        )
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

  Container tedarikcieklecontainer(BuildContext context,IconData icon, String text) {
    return Container(
                width: MediaQuery.of(context).size.width*0.8,
                alignment: Alignment.center,
                child: TextFormField(
                  style:const TextStyle(
                          height: 1.5,
                          ),
                  decoration: InputDecoration(
                    contentPadding:const
                    EdgeInsets.only(left: 10, top: 10, bottom: 15),
                     prefixIcon: Padding(
                       padding:const  EdgeInsets.only(top: 17),
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