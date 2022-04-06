import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:kursbetv2/main_page.dart';
import 'package:kursbetv2/widgets/kurs_bet_logo.dart';

class LoginView extends StatelessWidget {
  const LoginView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Container(
            decoration: BoxDecoration(
              image: DecorationImage(
                fit: BoxFit.cover,
                alignment: Alignment.topLeft,
                image: NetworkImage(
                    "https://listelist.com/wp-content/uploads/2021/07/fubol-topu-secerken-dikkat-edilecekler.jpg"),
              ),
            ),
            height: MediaQuery.of(context).size.height,
            width: MediaQuery.of(context).size.width,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                KursBetLogo(),
                SizedBox(
                  height: 40,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 50.0),
                  child: TextField(
                    decoration: InputDecoration(
                        filled: true,
                        fillColor: Colors.green.withOpacity(0.4),
                        hintText: "Kullanıcı Adı",
                        hintStyle: TextStyle(color: Colors.white)),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 50.0),
                  child: TextField(
                    decoration: InputDecoration(
                        filled: true,
                        fillColor: Colors.green.withOpacity(0.4),
                        hintText: "Parola",
                        hintStyle: TextStyle(color: Colors.white)),
                  ),
                ),
                ElevatedButton(
                  onPressed:()=> Navigator.pushNamed(context, "/main_page"),
                  child: Text("Giriş"),
                ),
                ElevatedButton(
                  onPressed: () => Navigator.pushNamed(context, "/register"),
                  child: Text("Kayıt Ol"),
                ),
                SizedBox(
                  height: 1,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
