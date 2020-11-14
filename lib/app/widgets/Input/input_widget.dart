import 'package:MegaHackFive/app/theme/styles.dart';
import 'package:flutter/material.dart';

class InputWidget extends StatefulWidget {
  final String label;
  final String place;
  final TextInputType type;
  final bool obscure;
  InputWidget({Key key, this.label, this.place, this.type, this.obscure = false});
  @override
  _InputWidgetState createState() => _InputWidgetState();
}

class _InputWidgetState extends State<InputWidget> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            padding: EdgeInsets.all(15),
            child: Text(
              widget.label,
              style: TextStyle(
                color: darkColor,
                fontSize: 17,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          Container(
            margin: EdgeInsets.only(left: 15, right: 15),
            child: TextField(
              obscureText: widget.obscure,
              keyboardType: widget.type,
              decoration: InputDecoration(
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.all(Radius.circular(8)),
                  borderSide: BorderSide(color: Colors.greenAccent, width: 2.0),
                ),
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.all(Radius.circular(8)),
                  borderSide: BorderSide(color: Color(0xFFD9D0E3), width: 1.0),
                ),
                hintText: widget.place,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
