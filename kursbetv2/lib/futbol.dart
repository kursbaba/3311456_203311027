import 'package:flutter/material.dart';

class Futbol extends StatelessWidget {
  const Futbol({Key? key}) : super(key: key);

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
                    "https://img.pixers.pics/pho_wat(s3:700/FO/40/58/29/21/700_FO40582921_982500a2468fa0b113e0dc87bf81620b.jpg,700,700,cms:2018/10/5bd1b6b8d04b8_220x50-watermark.png,over,480,650,jpg)/duvar-resimleri-dikissiz-suni-cim-saha-doku.jpg.jpg")),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Container(
                child: Text(
                  "Futbol",
                  style: TextStyle(fontWeight: FontWeight.w900, fontSize: 45, color: Colors.white),
                ),
              ),
              SizedBox(
                height: 25,
              ),
              Container(
                width: MediaQuery.of(context).size.width,
                child: Text(
                  "Türkiye - Süper Lig",
                  style: TextStyle(fontWeight: FontWeight.w500, fontSize: 25,color: Colors.white),
                  textAlign: TextAlign.left,
                ),
              ),
              Container(
                child: Text(
                  "MS    Fenerbahçe 5-1 Galatasaray ",
                  style: TextStyle(fontWeight: FontWeight.w500,color: Colors.white),
                ),
              ),
              Container(
                child: Text(
                  "MS Konyaspor 4-2 Sivasspor",
                  style: TextStyle(fontWeight: FontWeight.w500,color: Colors.white),
                ),
              ), Container(
                child: Text(
                  "MS Alanyaspor 2-0  Çaykur Rizespor",
                  style: TextStyle(fontWeight: FontWeight.w500,color: Colors.white),
                ),
              ), Container(
                child: Text(
                  "MS Ankaragücü 6-0 Alayı SK",
                  style: TextStyle(fontWeight: FontWeight.w500,color: Colors.white),
                ),
              ), Container(
                child: Text(
                  "MS Kasımpaşa 2-1 Gaziantep",
                  style: TextStyle(fontWeight: FontWeight.w500,color: Colors.white),
                ),
              ),

              SizedBox(
                height: 50,
              ),
              Container(
                width: MediaQuery.of(context).size.width,
                child: Text(
                  "İngiltere - Premier Lig",
                  style: TextStyle(fontWeight: FontWeight.w500, fontSize: 25,color: Colors.white),
                  textAlign: TextAlign.left,
                ),
              ),
              Container(
                child: Text(
                  "MS  West Ham United 2-1 Everton",
                  style: TextStyle(fontWeight: FontWeight.w500,color: Colors.white),
                ),
              ),
              Container(
                child: Text(
                  "MS Tottenham 5-1 Newcastle United",
                  style: TextStyle(fontWeight: FontWeight.w500,color: Colors.white),
                ),
              ),
              SizedBox(height: 50,),
              Container(
                width: MediaQuery.of(context).size.width,
                child: Text(
                  "Fransa - Ligue 1",
                  style: TextStyle(fontWeight: FontWeight.w500, fontSize: 25,color: Colors.white),
                  textAlign: TextAlign.left,
                ),
              ),
              Container(
                child: Text(
                  "MS  Metz 1-2 Monaco",
                  style: TextStyle(fontWeight: FontWeight.w500,color: Colors.white),
                ),
              ),
              Container(
                child: Text(
                  "MS Lyon 3-2 Angers",
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


//https://publicdomainvectors.org/photos/football-art-public-domain.jpg