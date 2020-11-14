import 'package:MegaHackFive/app/theme/styles.dart';
import 'package:flutter/material.dart';

class LogoWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(
        child: Text(
          "Jornada Órama",
          style: TextStyle(
              color: primaryColor, fontSize: 35, fontWeight: FontWeight.bold),
        ),
      ),
    );
  }
}
