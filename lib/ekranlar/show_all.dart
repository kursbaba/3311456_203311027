import 'package:flutter/material.dart';

class ShowAllPage extends StatelessWidget {
  const ShowAllPage({Key? key, required this.allWidgets}) : super(key: key);
  final List<Widget> allWidgets;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15.0),
              child: Container(
                height: 50,
                alignment: Alignment.centerLeft,
                child: InkWell(
                  onTap: (){Navigator.pop(context);},
                  hoverColor: Colors.transparent,
                  highlightColor: Colors.transparent,
                  radius: 0,
                  child: Row(
                  children: [
                     Icon(Icons.chevron_left,size: 30,),
                    Text("Ana Ekran",style: TextStyle(fontSize: 20,fontWeight: FontWeight.w700),),
                  ],
                ),),
              ),
            ),
            Expanded(
              child: Center(

                  child: Padding(
                    padding: const EdgeInsets.only(left:8.0),
                    child: ListView.builder(
                     physics: BouncingScrollPhysics(),
                      scrollDirection: Axis.vertical,
                        itemCount: allWidgets.length,
                        itemBuilder: (context, i) {
                          return allWidgets[i];
                        }),
                  ),
                ),
            ),
          ],
        ),
      ),
    );
  }
}
