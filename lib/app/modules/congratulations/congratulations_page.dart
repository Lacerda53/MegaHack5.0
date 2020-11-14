import 'package:MegaHackFive/app/theme/styles.dart';
import 'package:flutter/material.dart';

class CongratulationsPage extends StatefulWidget {
  @override
  _CongratulationsPageState createState() => _CongratulationsPageState();
}

class _CongratulationsPageState extends State<CongratulationsPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Center(
            child: Column(
              children: [
                SizedBox(
                  height: 30,
                ),
                Image.asset(
                  "assets/illustrations/1.png",
                  width: 250,
                ),
                SizedBox(
                  height: 5,
                ),
                Text(
                  "Parabéns!",
                  style: TextStyle(
                      color: darkColor,
                      fontSize: 30,
                      fontWeight: FontWeight.bold),
                ),
                SizedBox(
                  height: 10,
                ),
                Center(
                  child: Text(
                    "Você passou para o próximo checkpoint.\nVeja seu relatório final:",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: darkColor,
                    ),
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Container(
                  margin: EdgeInsets.only(left: 50),
                  child: Image.asset(
                    "assets/illustrations/chart.png",
                    width: 200,
                  ),
                ),
                SizedBox(
                  height: 15,
                ),
                Text(
                  "Seu dinheiro rendeu\n23% ao total!",
                  textAlign: TextAlign.center,
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),
                SizedBox(
                  height: 10,
                ),
                RichText(
                  textAlign: TextAlign.center,
                  text: TextSpan(
                    text:
                        "Ou seja: você ganhou R\$23 a mais ao\nlongo desse tempo. ",
                    style: TextStyle(
                      color: darkColor,
                      fontSize: 14,
                    ),
                    children: <TextSpan>[
                      TextSpan(
                        text: "Totalizando R\$123.",
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Text(
                  "Ainda faltam R\$2.377 para seu objetivo\nser cumprido na data planejada.",
                  textAlign: TextAlign.center,
                  style: TextStyle(color: darkColor),
                ),
                SizedBox(
                  height: 10,
                ),
                Stack(
                  children: [
                    Container(
                      height: MediaQuery.of(context).size.height / 2.5,
                      color: greenbg,
                    ),
                    Container(
                      margin: EdgeInsets.only(top: 20),
                      padding: EdgeInsets.all(15),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Algum imprevisto?",
                            style: TextStyle(
                                color: darkColor,
                                fontSize: 20,
                                fontWeight: FontWeight.bold),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Text(
                            "Sem problemas! Veja as medidas que\nvocê pode tomar",
                            style: TextStyle(
                              color: darkColor,
                              fontSize: 16
                            ),
                          ),
                        ],
                      ),
                    )
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
