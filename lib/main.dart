import 'package:fatura_app_2/satislar/satis_faturasi/satis_perakende_ekle.dart';
import 'package:flutter/material.dart';
import 'package:fatura_app_2/screens/splash_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const  MaterialApp(
      home:  SatisPerakendeEkle(),
      debugShowCheckedModeBanner: false,
    );
  }
}


/*import 'package:fatura_app_2/screens/splash_screen.dart';
import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(
      routes: {"/": (context) =>const SplashScreens()},
      debugShowCheckedModeBanner: false,
    ));
*/