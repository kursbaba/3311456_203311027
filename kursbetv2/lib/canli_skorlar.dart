import 'package:flutter/material.dart';

class CanliSkor extends StatelessWidget {
  const CanliSkor({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: SafeArea(
        child: Container(
          width: MediaQuery.of(context).size.width,
          decoration: BoxDecoration(
            image: DecorationImage(
                opacity: (0.3),
                image: NetworkImage(
                    "https://u7.uidownload.com/vector/746/487/vector-chronometre-chronometer-svg.jpg")),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Container(
                child: Text(
                  "Canlı Sonuçlar",
                  style: TextStyle(fontWeight: FontWeight.w900, fontSize: 45),
                ),
              ),
              SizedBox(
                height: 130,
              ),
              Container(
                width: MediaQuery.of(context).size.width,
                child: Text(
                  "Futbol",
                  style: TextStyle(fontWeight: FontWeight.w500, fontSize: 25,color: Colors.green),
                  textAlign: TextAlign.left,
                ),
              ),
              Container(
                child: Text(
                  "69'    Fenerbahçe 2-1 Galatasaray  MS1:2.3  MS2:1.7 MS0:1.5 ",
                  style: TextStyle(fontWeight: FontWeight.w500,color: Colors.green),
                ),
              ),
              Container(
                child: Text(
                  "25'    Türkiye 3-1  Portekiz  MS1:1.4  MS2:2.5 MS0:2.2",
                  style: TextStyle(fontWeight: FontWeight.w500,color: Colors.green),
                ),
              ),

              SizedBox(
                height: 200,
              ),
              Container(
                width: MediaQuery.of(context).size.width,
                child: Text(
                  "Basketbol",
                  style: TextStyle(fontWeight: FontWeight.w500, fontSize: 25,color: Colors.orange),
                  textAlign: TextAlign.left,
                ),
              ),
              Container(
                child: Text(
                  "3.P Atlanta 112-115 Brooklyn MS1:1.7 MS2:1.57 ",
                  style: TextStyle(fontWeight: FontWeight.w500,color: Colors.orange),
                ),
              ),
              Container(
                child: Text(
                  "2.P Galatasaray 56-46 Pınar Karşısayaka MS1:1.3  MS2:2.5",
                  style: TextStyle(fontWeight: FontWeight.w500,color: Colors.orange),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
