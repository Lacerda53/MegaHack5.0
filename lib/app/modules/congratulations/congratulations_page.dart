import 'package:MegaHackFive/app/theme/styles.dart';
import 'package:MegaHackFive/app/widgets/Button_Main/button_widget.dart';
import 'package:MegaHackFive/app/widgets/CardWin/cardWin_widget.dart';
import 'package:MegaHackFive/app/widgets/Input/input_widget.dart';
import 'package:flutter/material.dart';
import 'package:lite_rolling_switch/lite_rolling_switch.dart';

class CongratulationsPage extends StatefulWidget {
  @override
  _CongratulationsPageState createState() => _CongratulationsPageState();
}

class _CongratulationsPageState extends State<CongratulationsPage> {
  bool witchStatus = false;
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
                Container(
                  color: greenbg,
                  child: Stack(
                    children: [
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
                              style: TextStyle(color: darkColor, fontSize: 16),
                            ),
                            SizedBox(
                              height: 20,
                            ),
                            Row(
                              children: [
                                Text(
                                  "Adiar viagem",
                                  style: TextStyle(
                                      color: darkColor,
                                      fontSize: 18,
                                      fontWeight: FontWeight.bold),
                                ),
                                SizedBox(
                                  width: 25,
                                ),
                                LiteRollingSwitch(
                                  value: witchStatus,
                                  textOn: 'Sim',
                                  textOff: 'Não',
                                  colorOn: primaryColor,
                                  colorOff: Colors.redAccent[700],
                                  iconOff: Icons.close,
                                  textSize: 16.0,
                                  onChanged: (bool witchStatus) {
                                    print("mudou");
                                  },
                                ),
                              ],
                            ),
                            SizedBox(
                              height: 30,
                            ),
                            InputWidget(
                              label: "Qual a nova data da viagem?",
                              place: "dia/mês/ano",
                              type: TextInputType.datetime,
                              padding: 0,
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Center(
                              child: FlatButton(
                                onPressed: () {},
                                child: Text("Pausar trilha"),
                              ),
                            ),
                          ],
                        ),
                      )
                    ],
                  ),
                ),
                SizedBox(
                  height: 40,
                ),
                ButtonMainWidget(
                  nome: "Quero pausar minha trilha",
                  color: Color(0xFFEA4335),
                  width: MediaQuery.of(context).size.width / 1.7,
                ),
                SizedBox(
                  height: 30,
                ),
                CardWinWidget(
                  title: "Recompensas adquiridas",
                ),
                SizedBox(
                  height: 40,
                ),
                ButtonMainWidget(
                  nome: "Prosseguir para próximo checkpoint",
                  to: "/dashboard",
                  width: MediaQuery.of(context).size.width / 1.1,
                ),
                SizedBox(
                  height: 40,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
