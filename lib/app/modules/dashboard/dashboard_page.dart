import 'dart:ui';
import 'package:MegaHackFive/app/theme/styles.dart';
import 'package:MegaHackFive/app/widgets/AppBarWidget/appBar_widget.dart';
import 'package:MegaHackFive/app/widgets/Button_Main/button_widget.dart';
import 'package:MegaHackFive/app/widgets/ProgressBar/progressBar_widget.dart';
import 'package:flutter/material.dart';

class DashboardPage extends StatefulWidget {
  @override
  _DashboardPageState createState() => _DashboardPageState();
}

class _DashboardPageState extends State<DashboardPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(65),
        child: SafeArea(
          child: AppBarWidget(
            title: "Dashboard",
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: SafeArea(
          child: Container(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  height: 20,
                ),
                Container(
                  padding: EdgeInsets.all(15),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Seu saldo",
                        style: TextStyle(
                            color: darkColor,
                            fontSize: 27,
                            fontWeight: FontWeight.bold),
                      ),
                      Text(
                        "R\$200",
                        style: TextStyle(
                            color: darkColor,
                            fontSize: 22,
                            fontWeight: FontWeight.bold),
                      )
                    ],
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Container(
                  color: linecolor,
                  width: MediaQuery.of(context).size.width,
                  height: 1,
                ),
                SizedBox(
                  height: 10,
                ),
                Container(
                  padding: EdgeInsets.all(15),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Investimentos",
                        style: TextStyle(
                          color: darkColor,
                          fontSize: 27,
                        ),
                      ),
                      Text(
                        "R\$25",
                        style: TextStyle(
                          color: darkColor,
                          fontSize: 22,
                        ),
                      )
                    ],
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Container(
                  color: linecolor,
                  width: MediaQuery.of(context).size.width,
                  height: 1,
                ),
                SizedBox(
                  height: 40,
                ),
                Container(
                  margin: EdgeInsets.only(left: 15),
                  child: Text(
                    "Meus objetivos",
                    style: TextStyle(
                        color: darkColor,
                        fontSize: 21,
                        fontWeight: FontWeight.bold),
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Center(
                  child: Container(
                    width: 362,
                    child: Row(
                      children: [
                        Column(
                          children: [
                            Container(
                              child: Image.asset(
                                "assets/illustrations/item1.png",
                              ),
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            ProgressBarWidget(
                              width: MediaQuery.of(context).size.width / 2.3,
                              progress: MediaQuery.of(context).size.width / 7,
                            )
                          ],
                        ),
                        SizedBox(
                          width: 20,
                        ),
                        Column(
                          children: [
                            Container(
                              child: Image.asset(
                                "assets/illustrations/item2.png",
                              ),
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            ProgressBarWidget(
                              width: MediaQuery.of(context).size.width / 2.3,
                              progress: MediaQuery.of(context).size.width / 20,
                            )
                          ],
                        )
                      ],
                    ),
                  ),
                ),
                SizedBox(
                  height: 40,
                ),
                Center(
                  child: ButtonMainWidget(
                    nome: "Novo objetivo",
                    to: "/listTrail",
                    width: MediaQuery.of(context).size.width / 1.1,
                  ),
                ),
                SizedBox(
                  height: 30,
                ),
                Container(
                  padding: EdgeInsets.only(left: 15, right: 15),
                  child: Text(
                    "Dicas para economizar baseadas\nem seus comportamentos",
                    style: TextStyle(
                        color: darkColor,
                        fontSize: 20,
                        fontWeight: FontWeight.bold),
                  ),
                ),
                SizedBox(
                  height: 25,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: Row(
                        children: [
                          Container(
                            margin: EdgeInsets.only(left: 15),
                            decoration: BoxDecoration(
                                color: greenbg,
                                borderRadius:
                                    BorderRadius.all(Radius.circular(15))),
                            child: Container(
                              padding: EdgeInsets.all(15),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    "Trilha Viagem",
                                    style: TextStyle(
                                        color: darkColor,
                                        fontSize: 20,
                                        fontWeight: FontWeight.bold),
                                  ),
                                  SizedBox(
                                    height: 10,
                                  ),
                                  Container(
                                    width: 220,
                                    child: RichText(
                                      text: TextSpan(
                                        text:
                                            "Oque você acha de economizar e investir ",
                                        style: TextStyle(
                                          color: darkColor,
                                          fontSize: 14,
                                        ),
                                        children: <TextSpan>[
                                          TextSpan(
                                            text: "R\$15",
                                            style: TextStyle(
                                              fontWeight: FontWeight.bold,
                                              color: primaryColor
                                            ),
                                          ),
                                          TextSpan(
                                            text: " nesse mês?\nAssim ",
                                            style: TextStyle(
                                              fontWeight: FontWeight.normal,
                                              color: darkColor
                                            ),
                                          ),
                                          TextSpan(
                                            text: "você conseguiria completar seu objetivo  1 mês mais rápido",
                                            style: TextStyle(
                                              fontWeight: FontWeight.bold,
                                              color: primaryColor
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                          Container(
                            margin: EdgeInsets.only(left: 15),
                            decoration: BoxDecoration(
                                color: Color(0xFFF3E9FF),
                                borderRadius:
                                    BorderRadius.all(Radius.circular(15))),
                            child: Container(
                              padding: EdgeInsets.all(15),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    "Trilha Aposentadoria",
                                    style: TextStyle(
                                        color: darkColor,
                                        fontSize: 20,
                                        fontWeight: FontWeight.bold),
                                  ),
                                  SizedBox(
                                    height: 10,
                                  ),
                                  Container(
                                    width: 220,
                                    child: RichText(
                                      text: TextSpan(
                                        text:
                                            "Oque você acha de economizar e investir ",
                                        style: TextStyle(
                                          color: darkColor,
                                          fontSize: 14,
                                        ),
                                        children: <TextSpan>[
                                          TextSpan(
                                            text: "R\$15",
                                            style: TextStyle(
                                              fontWeight: FontWeight.bold,
                                              color: primaryColor
                                            ),
                                          ),
                                          TextSpan(
                                            text: " nesse mês?\nAssim ",
                                            style: TextStyle(
                                              fontWeight: FontWeight.normal,
                                              color: darkColor
                                            ),
                                          ),
                                          TextSpan(
                                            text: "você conseguiria completar seu objetivo  1 mês mais rápido",
                                            style: TextStyle(
                                              fontWeight: FontWeight.bold,
                                              color: primaryColor
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                    )
                  ],
                ),
                SizedBox(height: 40,)
              ],
            ),
          ),
        ),
      ),
    );
  }
}
