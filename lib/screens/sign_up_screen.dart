import 'package:fatura_app_2/constants.dart';
import 'package:fatura_app_2/screens/first_login.dart';
import 'package:flutter/material.dart';

class SignUp extends StatelessWidget {
  const SignUp({super.key});

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
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.12,
                ),
               const CircleAvatar(
                  radius: 50,
                  backgroundImage: AssetImage("assets/images/camera.png"),
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.1,
                ),
                signupcontainer(context,Icons.person,"Kullanıcı Adı"),
                signupcontainer(context, Icons.lock_outline,"Parola"),
                signupcontainer(context,Icons.mail,"E-mail"),
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.055,
                ),
                GestureDetector(
                 onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) =>
                           const   FirstLoginScreen(),
                        ),
                      );
                    },
                  child: Container(
                    width: MediaQuery.of(context).size.width * 0.4,
                    padding: EdgeInsets.all(
                      MediaQuery.of(context).size.width * 0.02,
                    ),
                    decoration:
                       const BoxDecoration(color: kButtonColor, 
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
                        'Kaydol',
                        style: TextStyle(color: kTextColor, fontSize: MediaQuery.of(context).size.width * 0.04),
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.055,
                ),
                RichText(
                    text:const TextSpan(
                  text: 'Sosyal hesabınızı bağlayabilirsiniz.',
                  style: TextStyle(
                    color: Colors.white70,
                    fontSize: 16,
                  ),
                )),
                 SizedBox(
                  height: MediaQuery.of(context).size.height * 0.04,
                ),
             Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                GestureDetector(
                  onTap: () {},
                  child: Container(
                    height: 40.0,
                    width: 40.0,
                    decoration:const BoxDecoration(
                      shape: BoxShape.circle,
                      color: Colors.white,
                      boxShadow: [
                        BoxShadow(
                          color: Colors.black,
                          offset: Offset(0, 2),
                          blurRadius: 6.0,
                        )
                      ],
                      image: DecorationImage(
                            image: AssetImage(
                              'assets/icons/g.png'
                            )
                      )
                    ),
                  ),
                ),
                  SizedBox(
                  width: MediaQuery.of(context).size.width * 0.04,
                ),
                GestureDetector(
                  onTap: () {},
                  child: Container(
                    height: 40.0,
                    width: 40.0,
                    decoration:const BoxDecoration(
                      shape: BoxShape.circle,
                      color: Colors.white,
                      boxShadow: [
                        BoxShadow(
                          color: Colors.black,
                          offset: Offset(0, 2),
                          blurRadius: 6.0,
                        )
                      ],
                      image: DecorationImage(
                            image: AssetImage(
                              'assets/icons/f.png'
                            )
                      )
                    ),
                  ),
                ),
                 SizedBox(
                  width: MediaQuery.of(context).size.width * 0.04,
                ),
                GestureDetector(
                  onTap: () {},
                  child: Container(
                    height: 40.0,
                    width: 40.0,
                    decoration:const BoxDecoration(
                      shape: BoxShape.circle,
                      color: Colors.white,
                      boxShadow: [
                        BoxShadow(
                          color: Colors.black,
                          offset: Offset(0, 2),
                          blurRadius: 6.0,
                        )
                      ],
                      image: DecorationImage(
                        fit: BoxFit.cover,
                            image: AssetImage(
                              'assets/icons/t.png',
                              
                            )
                            
                      )
                    ),
                  ),
                )
              ],
             ),
              ],
            ),
          ),
        ),
    );
  }

  Container signupcontainer(BuildContext context, IconData icon, String text) {
    return Container(
                width: MediaQuery.of(context).size.width * 0.76,
                alignment: Alignment.center,
                child: TextFormField(
                  style: const TextStyle(
                    height: 1.5,
                  ),
                  decoration: InputDecoration(
                    contentPadding:const EdgeInsets.only(left: 10, top: 10, bottom: 15),
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
                    focusedBorder:const UnderlineInputBorder(borderSide: BorderSide(color: kBorderColor)),
                    label:  Center(
                      child: Text(text),
                    ),
                    labelStyle:kHintTextStyle,
                  ),
                ),
              );
  }
}
