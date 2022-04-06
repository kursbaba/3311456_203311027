
import 'package:flutter/material.dart';

class KursBetLogo extends StatelessWidget {
  const KursBetLogo({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Material(
        borderRadius: BorderRadius.all(Radius.circular(30)),
        elevation: 12,
        child: Container(
          width: 200,
          height: 100,
          decoration: BoxDecoration(
            color: Colors.green,
            borderRadius: BorderRadius.all(
              Radius.circular(30),
            ),
          ),
          alignment: Alignment.center,
          child: Text(
            "KürşBet",
            style: TextStyle(
                fontSize: 35,
                fontWeight: FontWeight.bold,
                color: Colors.white),
          ),
        ));
  }
}
