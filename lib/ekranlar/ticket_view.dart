import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:mobil_proje/ekranlar/ara%C3%A7lar/app_layout.dart';
import 'package:mobil_proje/ekranlar/ara%C3%A7lar/app_style.dart';
import 'package:mobil_proje/ekranlar/widgets/thick_container.dart';


class TicketView extends StatelessWidget {
  final Map<String, dynamic> ticket;
  const TicketView({Key? key, required this.ticket}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = AppLayOut.getSize(context);
    return SizedBox(
      width: size.width*0.85,
      height: AppLayOut.getHeight(200),
      child: Container(
        margin:  EdgeInsets.only(right: AppLayOut.getHeight(16)),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            //kartın mavi kısmı
           Container(
             decoration:  BoxDecoration(
               color: Color(0xFF526799),
               borderRadius: BorderRadius.only(topLeft: Radius.circular(AppLayOut.getHeight(21)),
               topRight: Radius.circular(21))
             ),
             padding:  EdgeInsets.all(AppLayOut.getHeight(16)),
             child: Column(
               children: [
                 Row(
                   children: [
                      Text(ticket['from']['code'], style: Styles.headLineStyle3.copyWith(color: Colors.white),),
                     Expanded(child: Container()),
                     ThickContainer(),
                     Expanded(child: Stack(
                       children: [SizedBox(
                         height: AppLayOut.getHeight(24),
                         child: LayoutBuilder(
                           builder:(BuildContext context, BoxConstraints contraints){
                             return Flex(
                               direction: Axis.horizontal,
                               mainAxisAlignment: MainAxisAlignment.spaceBetween,
                               mainAxisSize: MainAxisSize.max,
                               children: List.generate((contraints.constrainWidth()/6).floor(), (index) => SizedBox(
                                 width: 3, height: 1, child: DecoratedBox(decoration: BoxDecoration(
                                 color: Colors.white
                               ),),
                               )),
                             );


                           } ,

                         ),
                       ),
                         Center(child: Transform.rotate(angle: 1.5,child: Icon(Icons.local_airport_rounded,color: Colors.white,),)),
                       ]
                     )),

                     ThickContainer(),
                     Expanded(child: Container()),
                     Text(ticket['to']['code'], style: Styles.headLineStyle3.copyWith(color: Colors.white),)
                   ],
                 ),
                 const Gap(3),
                 Row(
                   mainAxisAlignment:MainAxisAlignment.spaceBetween ,
                   children: [
                     SizedBox(
                       width: AppLayOut.getWidth(100),child: Text(ticket['from']['name'],style: Styles.headLineStyle4.copyWith(color: Colors.white),),
                     ),
                     Center(child: Text(ticket['flying_time'],style: Styles.headLineStyle4.copyWith(color: Colors.white),)),
                     SizedBox(
                       width: AppLayOut.getWidth(100),child: Text(ticket['to']['name'],textAlign: TextAlign.end,style: Styles.headLineStyle4.copyWith(color: Colors.white),),
                     ),
                   ],
                 ),
               ],
             ),
           ),
            //turuncu kısım
            Container(
              color: Styles.orangeColor,
              //const Color(0xFFF37b67),
              child: Row(
                children:  [
                  SizedBox(
                    height: AppLayOut.getHeight(20),
                    width: AppLayOut.getWidth(10),
                    child: DecoratedBox(
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.only(
                          topRight: Radius.circular(10),
                          bottomRight: Radius.circular(10),
                        )
                      ),
                    ),
                  ),
                  Expanded(child: Padding(
                    padding: const EdgeInsets.all(12.0),
                    child: LayoutBuilder(
                      builder: (BuildContext context,BoxConstraints constraints){
                         return Flex(
                          direction: Axis.horizontal,
                          mainAxisAlignment:MainAxisAlignment.spaceBetween ,
                          mainAxisSize: MainAxisSize.max,
                          children: List.generate((constraints.constrainWidth()/15).floor(), (index) => const SizedBox(
                            width: 5,height: 1,
                            child: DecoratedBox(
                              decoration: BoxDecoration(
                                  color: Colors.white
                              ),
                            ),
                          )),

                        );
                      },
                    ),
                  )),
                  const SizedBox(
                    height: 20,
                    width: 10,
                    child: DecoratedBox(
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(10),
                            bottomLeft: Radius.circular(10),
                          )
                      ),
                    ),
                  ),
                ],
              ),
            ),

            Container(
              decoration: BoxDecoration(
                  color: Styles.orangeColor,
                  borderRadius: BorderRadius.only(bottomLeft: Radius.circular(21),
                      bottomRight: Radius.circular(21))
              ),
              padding: const EdgeInsets.only(left: 16, top: 10, right: 16,bottom: 16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment:MainAxisAlignment.spaceBetween ,
                    children: [
                      Column(
                        children: [
                          Text(ticket['date'],style: Styles.headLineStyle3.copyWith(color: Colors.white),),
                          Gap(5),
                          Text("TARİH",style: Styles.headLineStyle4.copyWith(color: Colors.white),),
                        ],
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Text(ticket['departure_time'],style: Styles.headLineStyle3.copyWith(color: Colors.white),),
                          Gap(5),
                          Text("Kalkış Zamanı",style: Styles.headLineStyle4.copyWith(color: Colors.white),),
                        ],
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          Text(ticket['number'].toString(),style: Styles.headLineStyle3.copyWith(color: Colors.white),),
                          Gap(5),
                          Text("NUMARA",style: Styles.headLineStyle4.copyWith(color: Colors.white),),
                        ],
                      ),
                    ],
                  )
                ],
              ),


            )
          ],
        ),
      ),
    );
  }
}
