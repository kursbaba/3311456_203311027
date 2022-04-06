import 'package:flutter/material.dart';
import 'package:kursbetv2/widgets/kurs_bet_logo.dart';

class WelcomeView extends StatelessWidget {
  const WelcomeView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Container(
            decoration: BoxDecoration(
                image: DecorationImage(
                  fit: BoxFit.cover,alignment: Alignment.topLeft,
              image: NetworkImage("https://listelist.com/wp-content/uploads/2021/07/fubol-topu-secerken-dikkat-edilecekler.jpg"),
            )),
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                const KursBetLogo(),
                ElevatedButton(
                  style: ElevatedButton.styleFrom(elevation: 12),
                  onPressed: ()=>Navigator.of(context).pushNamed("/login"),
                  child: Text("Giriş"),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
