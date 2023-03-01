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
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.12,
                ),
                CircleAvatar(
                  radius: 50,
                  backgroundImage: AssetImage("assets/images/camera.png"),
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.1,
                ),
                Container(
                  width: MediaQuery.of(context).size.width * 0.76,
                  child: TextFormField(
                    style: TextStyle(
                      height: 1.5,
                    ),
                    decoration: InputDecoration(
                      contentPadding: EdgeInsets.only(left: 10, top: 10, bottom: 15),
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
                      focusedBorder: UnderlineInputBorder(borderSide: BorderSide(color: Colors.white)),
                      label: const Center(
                        child: Text("Kullanıcı Adı"),
                      ),
                      labelStyle: TextStyle(
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
                //SizedBox(height: MediaQuery.of(context).size.height*0.01,),
                Container(
                  width: MediaQuery.of(context).size.width * 0.76,
                  child: TextFormField(
                    obscureText: true,
                    style: TextStyle(
                      height: 1.5,
                    ),
                    decoration: InputDecoration(
                      contentPadding: EdgeInsets.only(left: 10, top: 10, bottom: 15),
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
                      focusedBorder: UnderlineInputBorder(borderSide: BorderSide(color: Colors.white)),
                      label: const Center(
                        child: Text("Parola"),
                      ),
                      labelStyle: TextStyle(
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
                //SizedBox(height: MediaQuery.of(context).size.height*0.02,),
                Container(
                  width: MediaQuery.of(context).size.width * 0.76,
                  child: TextFormField(
                    style: TextStyle(
                      height: 1.5,
                    ),
                    decoration: InputDecoration(
                      contentPadding: EdgeInsets.only(left: 10, top: 10, bottom: 15),
                      prefixIcon: Padding(
                        padding: const EdgeInsets.only(top: 17),
                        child: Icon(
                          Icons.mail,
                          color: Colors.white,
                        ),
                      ),
                      enabledBorder: UnderlineInputBorder(
                        borderSide: BorderSide(color: Colors.white),
                      ),
                      focusedBorder: UnderlineInputBorder(borderSide: BorderSide(color: Colors.white)),
                      label: const Center(
                        child: Text("E-mail"),
                      ),
                      labelStyle: TextStyle(
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.055,
                ),
                GestureDetector(
                 onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) =>
                              FirstLoginScreen(),
                        ),
                      );
                    },
                  child: Container(
                    width: MediaQuery.of(context).size.width * 0.4,
                    padding: EdgeInsets.all(
                      MediaQuery.of(context).size.width * 0.02,
                    ),
                    decoration:
                        BoxDecoration(color: Color(0xff74A2C3), 
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
                        style: TextStyle(color: Colors.white, fontSize: MediaQuery.of(context).size.width * 0.04),
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.055,
                ),
                RichText(
                    text: TextSpan(
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
                    decoration: BoxDecoration(
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
                    decoration: BoxDecoration(
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
                    decoration: BoxDecoration(
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
      ),
    );
  }
}
