import 'package:MegaHackFive/app/theme/styles.dart';
import 'package:MegaHackFive/app/widgets/Button_Main/button_widget.dart';
import 'package:MegaHackFive/app/widgets/Button_arrows/buttonarrow_widget.dart';
import 'package:flutter/material.dart';

class FinalTrailPage extends StatefulWidget {
  @override
  _FinalTrailPageState createState() => _FinalTrailPageState();
}

class _FinalTrailPageState extends State<FinalTrailPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Container(
              decoration: BoxDecoration(
                  color: greenbg,
                  borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(30),
                      bottomRight: Radius.circular(30))),
              height: MediaQuery.of(context).size.height / 3.8,
              child: Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Image.asset(
                      "assets/illustrations/hand.png",
                      width: 160,
                    ),
                  ],
                ),
              ),
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(height: MediaQuery.of(context).size.height / 9),
                Container(
                  width: 300,
                  child: Text(
                    "Parabéns! \n Sua trilha foi criada com sucesso",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        color: primaryColor,
                        fontSize: 28,
                        fontWeight: FontWeight.bold),
                  ),
                ),
                SizedBox(
                  height: 30,
                ),
                ButtonMainWidget(
                  nome: "Ver minha trilha",
                  to: "/myTrail",
                  width: MediaQuery.of(context).size.width / 1.1,
                ),
                SizedBox(
                  height: 30,
                ),
                Center(
                  child: Container(
                    child: Text(
                      "Você se encontra no perfil",
                      style: TextStyle(fontSize: 20, color: baseColor),
                    ),
                  ),
                ),
                Container(
                  child: Text(
                    "Moderado",
                    style: TextStyle(
                      fontSize: 20,
                      color: Color(0xffFBBC05),
                    ),
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Text(
                  "Fique tranquilo! Nós iremos escolher os melhores\n investimentos para você",
                  style: TextStyle(color: baseColor),
                  textAlign: TextAlign.center,
                ),
              ],
            ),
          ],
        ),
      ),
      floatingActionButton: Container(
        padding: EdgeInsets.only(left: 30),
        child: ButtonArrowWidget(
          bleft: true,
          left: "/subConfigTrail",
        ),
      ),
    );
  }
}
