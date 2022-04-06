import 'package:flutter/material.dart';

class MainPage extends StatelessWidget {
  const MainPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          width: MediaQuery.of(context).size.width,
          decoration: BoxDecoration(
            image: DecorationImage(
              image: NetworkImage(
                  "https://listelist.com/wp-content/uploads/2021/07/fubol-topu-secerken-dikkat-edilecekler.jpg"),
              fit: BoxFit.cover,
              alignment: Alignment.topLeft,
            ),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Padding(
                padding: const EdgeInsets.only(bottom: 70.0),
                child: Container(
                  decoration: BoxDecoration(
                    color: Colors.green.withOpacity(0.5),
                    borderRadius: BorderRadius.circular(8)
                  ),
                  child: TextButton(
                    onPressed: ()=> Navigator.pushNamed(context, "/canli_skorlar"),
                    child: Text("Canlı Skorlar",style: TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                    ),),
                  ),
                ),
              ),Container(
                decoration: BoxDecoration(
                  color: Colors.green.withOpacity(0.5),
                  borderRadius: BorderRadius.circular(8)

                ),
                child: TextButton(
                  onPressed: ()=>Navigator.pushNamed(context, "/futbol"),
                  child: Text("Futbol",style: TextStyle(
                    color: Colors.white,
                    fontSize: 20,

                  ),),
                ),
              ),Padding(
                padding: const EdgeInsets.only(top: 70.0),
                child: Container(
                  decoration: BoxDecoration(
                    color: Colors.green.withOpacity(0.5),
                    borderRadius: BorderRadius.circular(8)
                  ),
                  child: TextButton(
                    onPressed:()=> Navigator.pushNamed(context, "/basketbol"),
                    child: Text("Basketbol",style: TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                    ),),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
