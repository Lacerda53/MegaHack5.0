import 'package:MegaHackFive/app/theme/styles.dart';
import 'package:flutter/material.dart';

class ButtonArrowWidget extends StatefulWidget {
  final String right;
  final bool bleft;
  final bool bright;
  ButtonArrowWidget({this.right="/", this.bleft=false, this.bright=false});
  @override
  _ButtonArrowWidgetState createState() => _ButtonArrowWidgetState();
}

class _ButtonArrowWidgetState extends State<ButtonArrowWidget> {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: <Widget>[
        widget.bleft ? 
        Align(
          alignment: Alignment.bottomLeft,
          child: FloatingActionButton(
            mini: true,
            heroTag: "btn1",
            onPressed: () => Navigator.pop(context),
            backgroundColor: secundaryColor,
            child: Icon(Icons.arrow_back_outlined),
          ),
        )
        : Container(),
        widget.bright ? 
        Align(
          alignment: Alignment.bottomRight,
          child: FloatingActionButton(
            onPressed: () => Navigator.pushNamed(context, widget.right),
            mini: true,
            heroTag: "btn2",
            backgroundColor: primaryColor,
            child: Container(
              child: Icon(Icons.arrow_forward_outlined),
            ),
          ),
        ):
        Container()
      ],
    );
  }
}
