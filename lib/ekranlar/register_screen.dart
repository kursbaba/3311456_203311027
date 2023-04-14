import 'package:flutter/material.dart';

import 'home_screen.dart';

class RegisterPage extends StatefulWidget {
  const RegisterPage({Key? key}) : super(key: key);
  static final TextEditingController tcController = TextEditingController();
  static final TextEditingController nameController = TextEditingController();
  static final TextEditingController surnameController = TextEditingController();
  static final TextEditingController phoneController = TextEditingController();
  static final TextEditingController birthDateController = TextEditingController();

  @override
  _RegisterPageState createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(height: 16),
              TextFormField(
                controller: RegisterPage.tcController,
                decoration: InputDecoration(
                  hintText: 'TCKN Giriniz',
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.all(
                      Radius.circular(16.0),
                    ),
                    borderSide: BorderSide.none,
                  ),
                  filled: true,
                  fillColor: Colors.grey[200],
                ),
              ),
              SizedBox(height: 16),
              TextFormField(
                controller: RegisterPage.nameController,
                decoration: InputDecoration(
                  hintText: 'Adınız',
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.all(
                      Radius.circular(16.0),
                    ),
                    borderSide: BorderSide.none,
                  ),
                  filled: true,
                  fillColor: Colors.grey[200],
                ),
              ),
              SizedBox(height: 16),
              TextFormField(
                controller: RegisterPage.surnameController,
                decoration: InputDecoration(
                  hintText: 'Soyadınız',
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.all(
                      Radius.circular(16.0),
                    ),
                    borderSide: BorderSide.none,
                  ),
                  filled: true,
                  fillColor: Colors.grey[200],
                ),
              ),
              SizedBox(height: 16),
              TextFormField(
                controller: RegisterPage.phoneController,
                decoration: InputDecoration(
                  hintText: 'Telefon Numaranız',
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.all(
                      Radius.circular(16.0),
                    ),
                    borderSide: BorderSide.none,
                  ),
                  filled: true,
                  fillColor: Colors.grey[200],
                ),
              ),
              SizedBox(height: 16),
              TextFormField(
                controller: RegisterPage.birthDateController,
                decoration: InputDecoration(
                  hintText: 'Doğum Tarihinizi Giriniz',
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.all(
                      Radius.circular(16.0),
                    ),
                    borderSide: BorderSide.none,
                  ),
                  filled: true,
                  fillColor: Colors.grey[200],
                ),
              ),
              SizedBox(height: 32),
              MaterialButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => HomeScreen()),
                  );
                },
                child: Text('Kayıt Ol'),
                color: Colors.grey[500],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
