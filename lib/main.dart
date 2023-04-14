import 'package:flutter/material.dart';
import 'package:mobil_proje/ekranlar/ara%C3%A7lar/app_style.dart';
import 'package:mobil_proje/ekranlar/login_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Ticket & Book',
      theme: ThemeData(

        primaryColor: primary,
      ),
      home:  LoginPage(),


    );
  }
}

