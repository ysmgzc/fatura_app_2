import 'package:flutter/material.dart';

import 'forgot_password.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Fatura',
    debugShowCheckedModeBanner: false,
      home: ForgotPassword(),
    );
  }
}