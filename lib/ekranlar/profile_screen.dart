import 'package:fluentui_icons/fluentui_icons.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:mobil_proje/ekranlar/credicart_screen.dart';
import 'package:mobil_proje/ekranlar/tickets.dart';

import 'araçlar/app_style.dart';

class ProfileScreen extends StatelessWidget {
  final String name = 'Kürşad';
  final String surname='Baygül';
  final int totalMiles =4748;

  const ProfileScreen({Key? key,}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Icon(FluentSystemIcons.ic_fluent_shield_filled, color: Colors.grey,),
            Text('Premium Üye',style: TextStyle(fontSize: 20),),
            CircleAvatar(
              radius: 110,
              backgroundImage: AssetImage('assets/images/avatar.png'),
            ),
            SizedBox(height: 16),
            Text(
              '$name $surname',
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 8),
            Text(
              'Uçulan Toplam Mesafe:',
              style: TextStyle(
                fontSize: 18,
              ),
            ),
            SizedBox(height: 8),
            Text(
              '$totalMiles mil',
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),
            Gap(90),
            TextButton(
              style: ButtonStyle(
                shape: MaterialStateProperty.all(RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(16),
                )),
                side: MaterialStateProperty.all(BorderSide(color: Colors.grey)),
                backgroundColor: MaterialStateProperty.all(Colors.white),
              ),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => CreditCardPage()),
                );
              },
              child: Text('Kredi Kartı Ekle', style: Styles.headLineStyle4),
            ),
          ],
        ),
      ),
    );
  }
}



