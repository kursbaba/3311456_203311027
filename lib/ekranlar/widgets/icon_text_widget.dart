import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

import '../araçlar/app_layout.dart';
import '../araçlar/app_style.dart';

class AppIconText extends StatelessWidget {
  final IconData icon;
  final String text;
  const AppIconText({Key? key,required this.icon,required this.text}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        padding: EdgeInsets.symmetric(vertical:AppLayOut.getWidth(12),horizontal: AppLayOut.getWidth(12) ),
    decoration: BoxDecoration(
    color: Colors.white,
    borderRadius: BorderRadius.circular(AppLayOut.getWidth(10)),
    ),
    child: Row(
    children: [
     Icon(icon,color: const Color(0xFFbFC2DF),),
    Gap(AppLayOut.getWidth(10)),
    Text(text,style: Styles.textStyle,)
    ],
    ),
    );
  }
}
