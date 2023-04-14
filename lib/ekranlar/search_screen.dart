import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:mobil_proje/ekranlar/ara%C3%A7lar/app_layout.dart';
import 'package:mobil_proje/ekranlar/ara%C3%A7lar/app_style.dart';
import 'package:mobil_proje/ekranlar/widgets/icon_text_widget.dart';

class SearchScreen extends StatelessWidget {
  const SearchScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = AppLayOut.getSize(context);
    return Scaffold(
      backgroundColor: Styles.bgColor,
      body: ListView(
        padding: EdgeInsets.symmetric(
            horizontal: AppLayOut.getWidth(20),
            vertical: AppLayOut.getHeight(20)),
        children: [
          Gap(AppLayOut.getHeight(40)),
          Text(
            'Ne Arıyorsunuz?',
            style: Styles.headLineStyle1
                .copyWith(fontSize: AppLayOut.getWidth(35)),
          ),
          Gap(AppLayOut.getHeight(20)),
          FittedBox(
            child: Container(
              padding: const EdgeInsets.all(3.5),
              child: Row(
                children: [
                  Container(
                    width: size.width * 0.44,
                    padding:
                        EdgeInsets.symmetric(vertical: AppLayOut.getHeight(7)),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.horizontal(
                            left: Radius.circular(AppLayOut.getHeight(50))),
                        color: Colors.white),
                    child: Center(
                      child: Text('Uçuş Biletleri'),
                    ),
                  ),
                  Container(
                    width: size.width * 0.44,
                    padding:
                        EdgeInsets.symmetric(vertical: AppLayOut.getHeight(7)),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.horizontal(
                            right: Radius.circular(AppLayOut.getHeight(50))),
                        color: Colors.transparent),
                    child: Center(
                      child: Text('Oteller'),
                    ),
                  ),
                ],
              ),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(AppLayOut.getHeight(50)),
                  color: const Color(0xFFF4F6Fd)),
            ),
          ),
          Gap(AppLayOut.getHeight(25)),
          const AppIconText(icon: Icons.flight_takeoff_rounded, text: 'Kalkış'),
          Gap(AppLayOut.getHeight(20)),
          const AppIconText(icon: Icons.flight_land_rounded, text: 'İniş'),
          Gap(AppLayOut.getHeight(25)),
          Container(
            padding: EdgeInsets.symmetric(
                vertical: AppLayOut.getWidth(18),
                horizontal: AppLayOut.getWidth(15)),
            decoration: BoxDecoration(
              color: Color(0xD91130CE),
              borderRadius: BorderRadius.circular(AppLayOut.getWidth(10)),
            ),
            child: Center(
              child: Text(
                'Bilet Bul',
                style: Styles.textStyle.copyWith(color: Colors.white),
              ),
            )
          )
        ],
      ),
    );
  }
}
