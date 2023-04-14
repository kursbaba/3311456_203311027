import 'package:fluentui_icons/fluentui_icons.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:mobil_proje/ekranlar/ara%C3%A7lar/app_info_list.dart';
import 'package:mobil_proje/ekranlar/ara%C3%A7lar/app_style.dart';
import 'package:mobil_proje/ekranlar/hotel_screen.dart';
import 'package:mobil_proje/ekranlar/login_screen.dart';
import 'package:mobil_proje/ekranlar/profile_screen.dart';
import 'package:mobil_proje/ekranlar/register_screen.dart';
import 'package:mobil_proje/ekranlar/search_screen.dart';
import 'package:mobil_proje/ekranlar/show_all.dart';
import 'package:mobil_proje/ekranlar/ticket_view.dart';
import 'package:mobil_proje/ekranlar/tickets.dart';


class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      backgroundColor: Styles.bgColor,
      body: ListView(
        children: [
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Column(
              children: [
                const Gap(40),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,

                  children: [

                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children:  [
                         Text('Günaydın, ${LoginPage.usernameController.value.text==""?RegisterPage.nameController.value.text:LoginPage.usernameController.value.text}',style: Styles.headLineStyle3,),
                         const Gap(5),
                         Text('Bilet Al',style: Styles.headLineStyle1,),
                      ],
                    ),

                    Container(
                      height: 50,
                      width: 50,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        image: const DecorationImage(
                          fit: BoxFit.fitHeight,
                          image: AssetImage("assets/images/logo.png"),
                        )
                      ),
                    )
                  ],
                ),
                const Gap(25),
                Container(
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: const Color(0xFF4F6FD)
                  ),
                  padding: const EdgeInsets.symmetric(horizontal: 12,vertical: 12),
                  child: Row (
                    children: [
                      const Icon(FluentSystemIcons.ic_fluent_search_regular, color: Colors.grey,),
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
                            MaterialPageRoute(builder: (context) => SearchScreen()),
                          );
                        },
                        child: Text('Arama', style: Styles.headLineStyle4),
                      ),
                      const SizedBox(width: 10),
                      const Icon(FluentSystemIcons.ic_fluent_person_filled, color: Colors.grey,),
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
                            MaterialPageRoute(builder: (context) => ProfileScreen()),
                          );
                        },
                        child: Text('Profil', style: Styles.headLineStyle4),
                      ),
                      const SizedBox(width: 10),
                      const Icon(FluentSystemIcons.ic_fluent_ticket_filled, color: Colors.grey,),

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
                            MaterialPageRoute(builder: (context) => TicketsScreen()),
                          );
                        },
                        child: Text('Biletlerim', style: Styles.headLineStyle4),
                      ),

                    ],
                  ),
                ),


                const Gap(40),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text('Uçuşlar',style: Styles.headLineStyle2,),
                    InkWell(
                        onTap: (){
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => ShowAllPage(allWidgets: ticketList.map((singleTicket) => TicketView(ticket:singleTicket,)).toList() )),
                          );
                        },
                        child: Text('Tümünü Göster ',style: Styles.textStyle.copyWith(color: Styles.primarycolor),))
                  ],
                ),
              ],
            ),
          ),
          const Gap(15),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            padding: const EdgeInsets.only(left: 20),
            child: Row(
              children: ticketList.map((singleTicket) => TicketView(ticket:singleTicket,)).toList(),
            ),
          ),
          const Gap(15),
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text('Oteller',style: Styles.headLineStyle2,),
                InkWell(
                    onTap: (){
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => ShowAllPage(allWidgets: hotelList.map((singleHotel) =>HotelScreen(hotel: singleHotel)).toList() )),
                      );
                    },
                    child: Text('Tümünü Göster ',style: Styles.textStyle.copyWith(color: Styles.primarycolor),))
              ],
            ),
          ),
          const Gap(15),
          SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              padding: const EdgeInsets.only(left: 20),
              child: Row(
                children:hotelList.map((singleHotel) =>HotelScreen(hotel: singleHotel)).toList() ),
              ),

        ],
      ),
    );
  }
}
