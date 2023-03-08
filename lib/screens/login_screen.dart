import 'package:fatura_app_2/constants.dart';
import 'package:fatura_app_2/screens/forgot_password_screen.dart';
import 'package:fatura_app_2/screens/home_page_screen.dart';
import 'package:fatura_app_2/screens/sign_up_screen.dart';
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
        decoration:const BoxDecoration(
           image: DecorationImage(
            image: AssetImage("assets/images/loggin2.png"),
            fit: BoxFit.cover,
          ),
        ),
        child: SingleChildScrollView(
            child: Column(
              children: [
                SizedBox(height: MediaQuery.of(context).size.height*0.15,),
                Text(
                  'e-fatura',
                  style: TextStyle(
                      color: kTextColor,
                      fontSize: MediaQuery.of(context).size.width*0.1,
                      fontWeight: FontWeight.bold,
                      shadows:const [BoxShadow(color: Colors.black, offset: Offset(1,2),blurRadius: 3 ),],
                  ),
                ),
                SizedBox(height: MediaQuery.of(context).size.height*0.15,),
                Container(
                  width: MediaQuery.of(context).size.width*0.76,
                  alignment: Alignment.center,
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
                              Icons.person,
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
                    child: Text("Kullanıcı Adı"),
                  ), 
                  labelStyle: TextStyle(
                   
                    color: kTextColor,
                  ),
                  
                    ),
                  ),
                  
                ),
                SizedBox(height: MediaQuery.of(context).size.height*0.02,),
                Container(
                  width: MediaQuery.of(context).size.width*0.76,
                  alignment: Alignment.center,
                  child: TextFormField(
                    obscureText: true,
                    style:const TextStyle(
                            height: 1.5,
                            ),
                    decoration:const InputDecoration(
                      contentPadding:
                      EdgeInsets.only(left: 10, top: 10, bottom: 15),
                       prefixIcon: Padding(
                         padding: EdgeInsets.only(top: 17),
                         child: Icon(
                              Icons.lock_outline,
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
                    child: Text("Parola"),
                  ), 
                  labelStyle: TextStyle(
                   
                    color: kTextColor,
                  ),
                  
                    ),
                  ),
                  
                ),
                SizedBox(height: MediaQuery.of(context).size.height*0.02,),
                Container(
                  width: MediaQuery.of(context).size.width*0.8,
                  alignment: Alignment.center,
                  child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                     GestureDetector(
                onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) =>
                             const ForgotPassword(),
                        ),
                      );
                    },
                child:const Text(
                  "Şifremi Unuttum",
                  style: TextStyle(color: kTextColor,decoration: TextDecoration.underline),
                ),
              )
                   /* MaterialButton(

                      child: Text("Şifremi Unuttum", style: TextStyle(color: Colors.white)),
                      onPressed: () {
                        Navigator.push(context, MaterialPageRoute(builder: (context) => ForgotPassword()));
                      },
                    ),*/
                  ],
                              ),
                ),
                SizedBox(height: MediaQuery.of(context).size.height*0.055,),
                GestureDetector(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) =>
                            const  HomePageScreen(),
                        ),
                      );
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
                      child: Text('Giriş Yap',
                      style: TextStyle(color: kTextColor,
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
                            const  SignUp(),
                        ),
                      );
                    },
                  child: RichText(
                    textAlign: TextAlign.center,
                    text:const TextSpan(
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
                          color: kTextColor,
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
    );
  }
}