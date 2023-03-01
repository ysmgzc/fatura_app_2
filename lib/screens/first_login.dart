import 'package:fatura_app_2/screens/home_page_screen.dart';
import 'package:flutter/material.dart';

class FirstLoginScreen extends StatefulWidget {
  const FirstLoginScreen({super.key});

  @override
  State<FirstLoginScreen> createState() => _FirstLoginScreenState();
}

class _FirstLoginScreenState extends State<FirstLoginScreen> {
  bool? value = false;
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
                SizedBox(height: MediaQuery.of(context).size.height*0.15,),
                Text(
                  'e-fatura',
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: MediaQuery.of(context).size.width*0.1,
                      fontWeight: FontWeight.bold,
                      shadows: [BoxShadow(color: Colors.black, offset: Offset(1,2),blurRadius: 3 ),],
                  ),
                ),
                SizedBox(height: MediaQuery.of(context).size.height*0.12,),
                Container(
                  width: MediaQuery.of(context).size.width*0.76,
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
                              Icons.business_center,
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
                    child: Text("Şirket Adı"),
                  ), 
                  labelStyle: TextStyle(
                   
                    color: Colors.white,
                  ),
                  
                    ),
                  ),
                  
       ),
       SizedBox(height: MediaQuery.of(context).size.height*0.02,),
                Container(
                  width: MediaQuery.of(context).size.width*0.76,
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
                    child: Text("Telefon"),
                  ), 
                  labelStyle: TextStyle(
                   
                    color: Colors.white,
                  ),
                  
                    ),
                  ),
                  
       ),
       SizedBox(height: MediaQuery.of(context).size.height*0.04,),
       Row(
        mainAxisAlignment: MainAxisAlignment.end,
         children: [
           Checkbox(      
            checkColor: Colors.white,
           side: MaterialStateBorderSide.resolveWith(
             (states) => BorderSide(width: 1.0, color: Colors.white),
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
                child: Text(
                  "Üyelik Sözleşmesini Kabul Ediyorum",
                  style: TextStyle(color: Colors.white,decoration: TextDecoration.underline),
                ),
              )
                  ],
                              ),
                ),
         ],
         
       ),
                SizedBox(height: MediaQuery.of(context).size.height*0.04,),
                GestureDetector(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) =>
                              HomePageScreen(),
                        ),
                      );
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
                      child: Text('Kayıt Ol',
                      style: TextStyle(color: Colors.white,
                      fontSize: MediaQuery.of(context).size.width*0.04),),),
                  ),
                ),
              ],)
        )
       )
    )
    );
    
  }
}