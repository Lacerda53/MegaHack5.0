import 'package:MegaHackFive/app/theme/styles.dart';
import 'package:flutter/material.dart';

class ButtonMainWidget extends StatefulWidget {
  final String nome;
  final String to;
  final double width;
  final Color color;

  ButtonMainWidget({Key key, this.nome, this.to, this.width = double.infinity, this.color = primaryColor});
  @override
  _ButtonMainWidgetState createState() => _ButtonMainWidgetState();
}

class _ButtonMainWidgetState extends State<ButtonMainWidget> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: widget.width,
      height: 56,
      child: RaisedButton(
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10),
            side: BorderSide(color: widget.color)),
        onPressed: ()=>Navigator.pushNamed(context, widget.to),
        color: widget.color,
        textColor: Colors.white,
        child: Text(
          widget.nome,
          style: TextStyle(
              color: lighColor, fontSize: 16, fontWeight: FontWeight.normal),
        ),
      ),
    );
  }
}
