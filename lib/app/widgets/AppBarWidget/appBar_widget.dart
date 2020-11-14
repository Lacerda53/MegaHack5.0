import 'package:MegaHackFive/app/theme/styles.dart';
import 'package:flutter/material.dart';

class AppBarWidget extends StatefulWidget {
  final String title;
  final bool back;
  final String toback;
  AppBarWidget({this.title = "Title", this.toback = "", this.back = false});
  @override
  _AppBarWidgetState createState() => _AppBarWidgetState();
}

class _AppBarWidgetState extends State<AppBarWidget> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: appBarColor,
        borderRadius: BorderRadius.only(
          bottomLeft: Radius.circular(20),
          bottomRight: Radius.circular(20),
        ),
      ),
      width: MediaQuery.of(context).size.width,
      padding: EdgeInsets.only(left: 5, right: 5),
      child: Stack(
        children: [
          widget.back
              ? Align(
                  alignment: Alignment.centerLeft,
                  child: IconButton(
                    icon: Icon(
                      Icons.arrow_back,
                      color: baseColor,
                    ),
                    onPressed: () =>
                        Navigator.popAndPushNamed(context, widget.toback),
                  ),
                )
              : Container(),
          Align(
            alignment: Alignment.center,
            child: Text(
              widget.title,
              style: TextStyle(
                  color: baseColor, fontSize: 20, fontWeight: FontWeight.bold),
            ),
          ),
          Align(
            alignment: Alignment.centerRight,
            child: IconButton(
              icon: Icon(
                Icons.account_circle,
                size: 30,
                color: primaryColor,
              ),
              onPressed: () => Navigator.popAndPushNamed(context, "/profile"),
            ),
          ),
        ],
      ),
    );
  }
}
