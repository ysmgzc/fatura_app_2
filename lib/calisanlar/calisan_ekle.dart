
import "package:flutter/material.dart";

class CalisanEkle extends StatefulWidget {
  const CalisanEkle({super.key});

  @override
  State<CalisanEkle> createState() => _CalisanEkleState();
}

class _CalisanEkleState extends State<CalisanEkle> {
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
        child:SingleChildScrollView(
            child: Column(
              children: [
                SizedBox(height: MediaQuery.of(context).size.height*0.15,),
                Text(
                  'Yeni Çalışan Ekle',
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: MediaQuery.of(context).size.width*0.07,
                      fontWeight: FontWeight.bold,
                      shadows: const [BoxShadow(color: Colors.black, offset: Offset(1,2),blurRadius: 3 ),],
                  ),
                ),
                SizedBox(height: MediaQuery.of(context).size.height*0.1,),
                Container(
                  width: MediaQuery.of(context).size.width*0.8,
                  child: TextFormField(
                    style: const TextStyle(
                            height: 1.5,
                            ),
                    decoration: const InputDecoration(
                      contentPadding:
                       EdgeInsets.only(left: 10, top: 10, bottom: 15),
                       prefixIcon: Padding(
                         padding: EdgeInsets.only(top: 17),
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
                    label: Center(
                    child: Text("Adı Soyadı"),
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
                    style: const TextStyle(
                            height: 1.5,
                            ),
                    decoration: const InputDecoration(
                      contentPadding:
                      EdgeInsets.only(left: 10, top: 10, bottom: 15),
                       prefixIcon: Padding(
                         padding: EdgeInsets.only(top: 17),
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
                    label: Center(
                    child: Text("TC Kimlik No"),
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
                    style: const TextStyle(
                            height: 1.5,
                            ),
                    decoration: const InputDecoration(
                      contentPadding:
                      EdgeInsets.only(left: 10, top: 10, bottom: 15),
                       prefixIcon: Padding(
                         padding: EdgeInsets.only(top: 17),
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
                    label:  Center(
                    child: Text("Telefon"),
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
                    style: const TextStyle(
                            height: 1.5,
                            ),
                    decoration: const InputDecoration(
                      contentPadding:
                      EdgeInsets.only(left: 10, top: 10, bottom: 15),
                       prefixIcon: Padding(
                         padding:  EdgeInsets.only(top: 17),
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
                    label:  Center(
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
                    padding:  EdgeInsets.all(MediaQuery.of(context).size.width*0.02,),
                    decoration: const BoxDecoration(
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
    );
  }
}