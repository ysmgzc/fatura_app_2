import 'package:flutter/material.dart';

class ForgotPassword extends StatelessWidget {
  const ForgotPassword({super.key});

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
                  'Şifrenizi mi unuttunuz?',
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: MediaQuery.of(context).size.width*0.05,
                      fontWeight: FontWeight.bold,
                      shadows: [BoxShadow(color: Colors.black, offset: Offset(1,2),blurRadius: 3 ),],
                  ),
                ),
                SizedBox(height: MediaQuery.of(context).size.height*0.05,),
                 Text(
                "Lütfen e-postanızı girin. \nHesabınıza girebilmeniz için size bir bağlantı göndereceğiz",
                textAlign: TextAlign.center,
                style: TextStyle(
                      color: Colors.white70,
                      fontSize: MediaQuery.of(context).size.width*0.03,
                      
                      ),
              ),
                SizedBox(height: MediaQuery.of(context).size.height*0.11,),
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
                              Icons.mail_outline,
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
              ],
            ),
    ),
        ),
     ),
        );
    
  }
}