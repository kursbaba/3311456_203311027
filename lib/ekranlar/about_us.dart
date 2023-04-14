import 'package:flutter/material.dart';

class AboutPage extends StatelessWidget {
  const AboutPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Hakkımızda',
              style: TextStyle(fontSize: 24.0, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 20.0),
            Text(
              'Bu uygulama, uçak biletleri ve otel rezervasyonları yapmanıza olanak sağlar. \n\n Uygulamanın kullanımı oldukça kolaydır ve size birçok seçenek sunar. Her türlü sorunuz için bizimle iletişime geçebilirsiniz.\n\n Tel:+90 XXX XXX XXXX\n\nE-mail: example@example.com',
              style: TextStyle(fontSize: 16.0),
              textAlign: TextAlign.center,
            ),
          ],
        ),
      ),
    );
  }
}
