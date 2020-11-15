import 'package:MegaHackFive/app/theme/styles.dart';
import 'package:flutter/material.dart';

class ProgressBarWidget extends StatefulWidget {
  final double width;
  final double progress;
  ProgressBarWidget({this.width, this.progress});
  @override
  _ProgressBarWidgetState createState() => _ProgressBarWidgetState();
}

class _ProgressBarWidgetState extends State<ProgressBarWidget> {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          margin: EdgeInsets.only(top: 2),
          decoration: BoxDecoration(
            color: purpleligh,
            borderRadius: BorderRadius.all(Radius.circular(10)),
          ),
          width: widget.width,
          height: 10,
        ),
        Positioned(
          child: Container(
            decoration: BoxDecoration(
              color: purplebg,
              borderRadius: BorderRadius.all(Radius.circular(10)),
            ),
            width: widget.progress,
            height: 15,
          ),
        )
      ],
    );
  }
}
