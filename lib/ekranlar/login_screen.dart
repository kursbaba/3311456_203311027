import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:mobil_proje/ekranlar/about_us.dart';
import 'package:mobil_proje/ekranlar/home_screen.dart';
import 'package:mobil_proje/ekranlar/register_screen.dart';
import 'package:mobil_proje/ekranlar/bottom_bar.dart';


class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final TextEditingController _usernameController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            CircleAvatar(
              radius: 110,
              backgroundImage: AssetImage('assets/images/logo.png'),
            ),
            Gap(40),
            Container(
              padding: EdgeInsets.symmetric(horizontal: 16.0),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8.0),
                color: Colors.grey[200],
              ),
              child: TextField(
                controller: _usernameController,
                decoration: InputDecoration(
                  hintText: 'Kullanıcı Adınızı Girin',
                  border: InputBorder.none,
                ),
              ),
            ),
            SizedBox(height: 16.0),
            Container(
              padding: EdgeInsets.symmetric(horizontal: 16.0),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8.0),
                color: Colors.grey[200],
              ),
              child: TextField(
                controller: _passwordController,
                decoration: InputDecoration(
                  hintText: 'Şifrenizi Girin',
                  border: InputBorder.none,
                ),
                obscureText: true,
              ),
            ),
            SizedBox(height: 24.0),
            MaterialButton(
              child: Text('Giriş'),
              color : Colors.grey[500],
              onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (context)=>HomeScreen()));
              },
            ),
            Gap(24),
            MaterialButton(
              child: Text('Kayıt Ol'),
              color : Colors.grey[500],
              onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (context)=>RegisterPage()));
              },
            ),
            SizedBox(height: 24.0),
            TextButton(
              style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all(Colors.grey[200]),
                overlayColor: MaterialStateProperty.all(Colors.grey[300]),
                shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                  RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8.0),
                    side: BorderSide(color: Colors.grey),
                  ),
                ),
              ),
              onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (context)=>AboutPage()));
              },
              child: Text(
                'Hakkımızda',
                style: TextStyle(
                  fontSize: 16.0,
                  color: Colors.grey[800],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
