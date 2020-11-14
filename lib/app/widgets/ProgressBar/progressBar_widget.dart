import 'package:MegaHackFive/app/theme/styles.dart';
import 'package:flutter/material.dart';

class ProgressBarWidget extends StatefulWidget {
  @override
  _ProgressBarWidgetState createState() => _ProgressBarWidgetState();
}

class _ProgressBarWidgetState extends State<ProgressBarWidget> {
  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    return Stack(
      children: [
        Container(
          margin: EdgeInsets.only(top: 2),
          decoration: BoxDecoration(
            color: purpleligh,
            borderRadius: BorderRadius.all(Radius.circular(10)),
          ),
          width: width / 1.1,
          height: 10,
        ),
        Positioned(
          child: Container(
            decoration: BoxDecoration(
              color: purplebg,
              borderRadius: BorderRadius.all(Radius.circular(10)),
            ),
            width: width / 4.5,
            height: 15,
          ),
        )
      ],
    );
  }
}
