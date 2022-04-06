import 'package:flutter/material.dart';
import 'package:kursbetv2/basketbol.dart';
import 'package:kursbetv2/canli_skorlar.dart';
import 'package:kursbetv2/futbol.dart';
import 'package:kursbetv2/login_view.dart';
import 'package:kursbetv2/main_page.dart';
import 'package:kursbetv2/register_view.dart';
import 'package:kursbetv2/welcome_view.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Kurs Bet',
      theme: ThemeData(
        primarySwatch: Colors.green,
        textTheme: TextTheme(
          subtitle1: TextStyle(color: Colors.green),
        ),
      ),

      initialRoute: "/",
      routes: {
        "/":(context) =>WelcomeView(),
        "/login":(context) => LoginView(),
        "/register":(context) => RegisterView(),
        "/main_page":(context)=>MainPage(),
        "/canli_skorlar":(context)=>CanliSkor(),
        "/futbol":(context)=>Futbol(),
        "/basketbol":(context)=>Basketbol(),
      },
    );
  }
}