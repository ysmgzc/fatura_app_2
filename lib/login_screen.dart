import 'package:fatura_app_2/forgot_password.dart';
import 'package:fatura_app_2/sign_up_screen.dart';
import "package:flutter/material.dart";

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
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
                SizedBox(height: MediaQuery.of(context).size.height*0.15,),
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
                    child: Text("Kullanıcı Adı"),
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
                    obscureText: true,
                    style: TextStyle(
                            height: 1.5,
                            ),
                    decoration: InputDecoration(
                      contentPadding:
                      EdgeInsets.only(left: 10, top: 10, bottom: 15),
                       prefixIcon: Padding(
                         padding: const EdgeInsets.only(top: 17),
                         child: Icon(
                              Icons.lock_outline,
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
                    child: Text("Parola"),
                  ), 
                  labelStyle: TextStyle(
                   
                    color: Colors.white,
                  ),
                  
                    ),
                  ),
                  
                ),
                SizedBox(height: MediaQuery.of(context).size.height*0.02,),
                Container(
                  width: MediaQuery.of(context).size.width*0.8,
                  child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    MaterialButton(
                      child: Text("Şifremi Unuttum", style: TextStyle(color: Colors.white)),
                      onPressed: () {
                        Navigator.push(context, MaterialPageRoute(builder: (context) => ForgotPassword()));
                      },
                    ),
                  ],
                              ),
                ),
                SizedBox(height: MediaQuery.of(context).size.height*0.055,),
                GestureDetector(
                  onTap: () {},
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
                      child: Text('Giriş Yap',
                      style: TextStyle(color: Colors.white,
                      fontSize: MediaQuery.of(context).size.width*0.04),),),
                  ),
                ),
                SizedBox(height: MediaQuery.of(context).size.height*0.055,),
                GestureDetector(
                  onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) =>
                              SignUp(),
                        ),
                      );
                    },
                  child: RichText(
                    textAlign: TextAlign.center,
                    text: TextSpan(
                    children: [
                      TextSpan(
                        text: 'Hesabınız yok mu? ',
                        style: TextStyle(
                          color: Colors.white70,
                          //fontSize: 18,
                          //fontWeight: FontWeight.w500,
                        )
                      ),
                      TextSpan(
                        
                        text: 'Kaydol',
                        style: TextStyle(
                          color: Colors.white,
                        //  fontSize: 18,
                          fontWeight: FontWeight.bold,
                        )
                      )
                    ]
                  
                  )
                   
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