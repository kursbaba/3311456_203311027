import 'package:flutter/material.dart';

class Basketbol extends StatelessWidget {
  const Basketbol({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: SafeArea(
        child: Container(
          width: MediaQuery.of(context).size.width,
          decoration: BoxDecoration(
            image: DecorationImage(
                fit: BoxFit.cover,
                opacity: (0.9),
                image: NetworkImage(
                    "https://jf-staeulalia.pt/img/other/18/collection-basketball-floor-cliparts-9.jpg")),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Container(
                child: Text(
                  "Basketbol",
                  style: TextStyle(fontWeight: FontWeight.w900, fontSize: 45, color: Colors.white),
                ),
              ),
              SizedBox(
                height: 25,
              ),
              Container(
                width: MediaQuery.of(context).size.width,
                child: Text(
                  "Türkiye - ING Basketbol Ligi",
                  style: TextStyle(fontWeight: FontWeight.w500, fontSize: 25,color: Colors.white),
                  textAlign: TextAlign.left,
                ),
              ),
              Container(
                child: Text(
                  "MS    Galatasaray 84-78 Pınar Karşıyaka",
                  style: TextStyle(fontWeight: FontWeight.w500,color: Colors.white),
                ),
              ),
              Container(
                child: Text(
                  "MS Büyükçekmece 92-90 Yalovaspor",
                  style: TextStyle(fontWeight: FontWeight.w500,color: Colors.white),
                ),
              ), Container(
                child: Text(
                  "MS Bahçeşehir 84-102 Anadolu Efes",
                  style: TextStyle(fontWeight: FontWeight.w500,color: Colors.white),
                ),
              ),

              SizedBox(
                height: 50,
              ),
              Container(
                width: MediaQuery.of(context).size.width,
                child: Text(
                  "ABD - NBA",
                  style: TextStyle(fontWeight: FontWeight.w500, fontSize: 25,color: Colors.white),
                  textAlign: TextAlign.left,
                ),
              ),
              Container(
                child: Text(
                  "MS  Atlanta 122-115 Brooklyn",
                  style: TextStyle(fontWeight: FontWeight.w500,color: Colors.white),
                ),
              ),
              Container(
                child: Text(
                  "MS Chicago 109-127 Miami Heat",
                  style: TextStyle(fontWeight: FontWeight.w500,color: Colors.white),
                ),
              ),
              SizedBox(height: 50,),
              Container(
                width: MediaQuery.of(context).size.width,
                child: Text(
                  "Euroleague - Normal Sezon",
                  style: TextStyle(fontWeight: FontWeight.w500, fontSize: 25,color: Colors.white),
                  textAlign: TextAlign.left,
                ),
              ),
              Container(
                child: Text(
                  "MS  Zalgiris Kaunas 103-90 Crvena Zvedza",
                  style: TextStyle(fontWeight: FontWeight.w500,color: Colors.white),
                ),
              ),
              Container(
                child: Text(
                  "MS Cleveland Cavaliers 90-80 Indiana Pacers",
                  style: TextStyle(fontWeight: FontWeight.w500,color: Colors.white),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
