import 'dart:ui';

import 'package:MegaHackFive/app/theme/styles.dart';
import 'package:MegaHackFive/app/widgets/AppBarWidget/appBar_widget.dart';
import 'package:MegaHackFive/app/widgets/Button_Main/button_widget.dart';
import 'package:MegaHackFive/app/widgets/CardWin/cardWin_widget.dart';
import 'package:MegaHackFive/app/widgets/ProgressBar/progressBar_widget.dart';
import 'package:flutter/material.dart';

class MyTrailPage extends StatefulWidget {
  @override
  _MyTrailPageState createState() => _MyTrailPageState();
}

class _MyTrailPageState extends State<MyTrailPage> {
  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(65),
        child: SafeArea(
          child: AppBarWidget(
            title: "Trilhas",
            back: true,
            toback: "/dashboard",
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: 20,
            ),
            Center(
              child: RichText(
                text: TextSpan(
                  text: "Sua jornada de ",
                  style: TextStyle(color: darkColor, fontSize: 25),
                  children: <TextSpan>[
                    TextSpan(
                        text: "Viagem",
                        style: TextStyle(fontWeight: FontWeight.bold))
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Center(
              child: Container(
                width: width / 1.1,
                decoration: BoxDecoration(
                    color: greenbg,
                    borderRadius: BorderRadius.all(Radius.circular(20))),
                height: 120,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image.asset("assets/illustrations/pig.png"),
                    SizedBox(
                      width: 15,
                    ),
                    Text(
                      "Ter R\$100 investidos\naté 25/03/2021",
                      style: TextStyle(
                          color: Color(0xFF3D3D3D),
                          fontSize: 20,
                          fontWeight: FontWeight.bold),
                    )
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 30,
            ),
            Center(
                child: ProgressBarWidget(
              width: width / 1.1,
              progress: width / 4.5,
            )),
            SizedBox(
              height: 20,
            ),
            Center(
              child: RichText(
                textAlign: TextAlign.center,
                text: TextSpan(
                  text: "Você completou ",
                  style: TextStyle(
                    color: purplebg,
                    fontSize: 14,
                  ),
                  children: <TextSpan>[
                    TextSpan(
                      text: "25%",
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                    TextSpan(text: "de sua tarefa,\ntendo R\$25 investidos")
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Center(
              child: ButtonMainWidget(
                nome: "Investir",
                to: "/congratulations",
                width: width / 1.1,
              ),
            ),
            SizedBox(
              height: 30,
            ),
            Image.asset("assets/illustrations/trail.png"),
            SizedBox(
              height: 30,
            ),
            Container(
              padding: EdgeInsets.all(15),
              child: Text(
                "Agora é conosco!",
                style: TextStyle(
                    color: darkColor,
                    fontSize: 24,
                    fontWeight: FontWeight.bold),
              ),
            ),
            Container(
              padding: EdgeInsets.only(left: 15, right: 15),
              child: Text(
                "Já investimos nos produtos mais adequados. Você não precisa fazer mais nada ;)",
                style: TextStyle(
                  color: darkColor,
                ),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  Container(
                    margin: EdgeInsets.only(left: 15),
                    width: width / 1.7,
                    height: 60,
                    decoration: BoxDecoration(
                        color: purpleligh,
                        borderRadius: BorderRadius.all(Radius.circular(15))),
                    child: Center(
                      child: Container(
                        padding: EdgeInsets.all(5),
                        child: RichText(
                          text: TextSpan(
                            text: "LCI do Banco BTG Pactual\n",
                            style: TextStyle(
                                color: darkColor,
                                fontSize: 15,
                                fontWeight: FontWeight.bold),
                            children: <TextSpan>[
                              TextSpan(
                                  text: "Rendimento de 106% do CDI",
                                  style:
                                      TextStyle(fontWeight: FontWeight.normal))
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(left: 15),
                    width: width / 1.7,
                    height: 60,
                    decoration: BoxDecoration(
                        color: purpleligh,
                        borderRadius: BorderRadius.all(Radius.circular(15))),
                    child: Center(
                      child: Container(
                        padding: EdgeInsets.all(5),
                        child: RichText(
                          text: TextSpan(
                            text: "LCI do Banco BTG Pactual\n",
                            style: TextStyle(
                                color: darkColor,
                                fontSize: 15,
                                fontWeight: FontWeight.bold),
                            children: <TextSpan>[
                              TextSpan(
                                  text: "Rendimento de 106% do CDI",
                                  style:
                                      TextStyle(fontWeight: FontWeight.normal))
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            CardWinWidget(
              title: "Recompensas ao alcançar próximo nível",
            ),
            SizedBox(
              height: 40,
            ),
            Center(
                child: ButtonMainWidget(
              nome: "Investir",
              to: "/congratulations",
              width: width / 1.1,
            )),
            SizedBox(
              height: 10,
            ),
            Center(
              child: FlatButton(
                onPressed: () {},
                child: Text("Pausar trilha"),
              ),
            ),
            SizedBox(
              height: 20,
            ),
          ],
        ),
      ),
    );
  }
}
