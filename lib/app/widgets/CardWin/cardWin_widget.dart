import 'dart:ui';

import 'package:MegaHackFive/app/theme/styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class CardWinWidget extends StatefulWidget {
  final String title;
  final bool blur;
  CardWinWidget({this.title, this.blur = false});
  @override
  _CardWinWidgetState createState() => _CardWinWidgetState();
}

class _CardWinWidgetState extends State<CardWinWidget> {
  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          padding: EdgeInsets.all(15),
          child: Text(
            widget.title,
            style: TextStyle(
                color: darkColor, fontWeight: FontWeight.bold, fontSize: 24),
          ),
        ),
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            children: [
              Container(
                margin: EdgeInsets.only(left: 15),
                width: width / 1.7,
                height: 100,
                decoration: BoxDecoration(
                    color: graycolor,
                    borderRadius: BorderRadius.all(Radius.circular(15))),
                child: Row(
                  children: [
                    SizedBox(
                      width: 15,
                    ),
                    SvgPicture.asset("assets/illustrations/trophy.svg"),
                    SizedBox(
                      width: 10,
                    ),
                    Stack(
                      children: <Widget>[
                        Container(
                          width: 150,
                          child: Center(
                              child: Text(
                                  'Redução da taxa de Adm nos próximos investimentos')),
                        ),
                        widget.blur ?
                        Positioned(
                          top: 0,
                          left: 0,
                          width: 100,
                          height: 200,
                          child: BackdropFilter(
                            filter: ImageFilter.blur(
                              sigmaX: 3,
                              sigmaY: 3,
                            ),
                            child: Container(
                              color: Colors.black.withOpacity(0),
                            ),
                          ),
                        )
                        : Container()
                      ],
                    )
                  ],
                ),
              ),
              Container(
                margin: EdgeInsets.only(left: 15),
                width: width / 1.7,
                height: 100,
                decoration: BoxDecoration(
                    color: graycolor,
                    borderRadius: BorderRadius.all(Radius.circular(15))),
                child: Row(
                  children: [
                    SizedBox(
                      width: 15,
                    ),
                    SvgPicture.asset("assets/illustrations/trophy.svg"),
                    SizedBox(
                      width: 10,
                    ),
                    Stack(
                      children: <Widget>[
                        Container(
                          width: 150,
                          child: Center(
                              child: Text(
                                  'Redução da taxa de Adm nos próximos investimentos')),
                        ),
                        widget.blur ?
                        Positioned(
                          top: 0,
                          left: 0,
                          width: 100,
                          height: 200,
                          child: BackdropFilter(
                            filter: ImageFilter.blur(
                              sigmaX: 3,
                              sigmaY: 3,
                            ),
                            child: Container(
                              color: Colors.black.withOpacity(0),
                            ),
                          ),
                        )
                        : Container()
                      ],
                    )
                  ],
                ),
              ),
            ],
          ),
        )
      ],
    );
  }
}
