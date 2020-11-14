import 'package:MegaHackFive/app/theme/styles.dart';
import 'package:MegaHackFive/app/widgets/Button_arrows/buttonarrow_widget.dart';
import 'package:MegaHackFive/app/widgets/Input/input_widget.dart';
import 'package:flutter/material.dart';

class ConfigTrailPage extends StatefulWidget {
  @override
  _ConfigTrailPageState createState() => _ConfigTrailPageState();
}

class _ConfigTrailPageState extends State<ConfigTrailPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: SafeArea(
          child: Column(children: [
            Container(
              decoration: BoxDecoration(
                  color: greenbg,
                  borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(30),
                      bottomRight: Radius.circular(30))),
              height: MediaQuery.of(context).size.height / 3.8,
              child: Center(
                child: Column(
                  children: [
                    SizedBox(
                      height: 20,
                    ),
                    Image.asset(
                      "assets/illustrations/p1.png",
                      width: 80,
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    Text(
                      'Trilha Viagem',
                      style: TextStyle(
                          color: darkColor,
                          fontSize: 25,
                          fontWeight: FontWeight.bold),
                    )
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Text("Responda as perguntas abaixo"),
            InputWidget(
              label: "Qual a data da viagem?",
              type: TextInputType.datetime,
              place: "dia/mês/ano",
            ),
            InputWidget(
              label: "Qual o valor total estimado da viagem?",
              type: TextInputType.number,
              place: "R\$ 0,00",
            ),
            InputWidget(
              label: "Quanto você tem para investir HOJE?",
              type: TextInputType.number,
              place: "R\$ 0,00",
            ),
            InputWidget(
              label: "Em média, quanto você poderá investir por mês?",
              type: TextInputType.number,
              place: "R\$ 0,00",
            ),
            SizedBox(
              height: 10,
            ),
            Container(
              margin: EdgeInsets.only(left: 15, right: 15),
              child: Text(
                "O ideal é você investir ao menos 30% de sua renda mensal.",
                style: TextStyle(color: baseColor, fontSize: 15),
              ),
            ),
            SizedBox(
              height: 70,
            ),
          ]),
        ),
      ),
      floatingActionButton: Container(
        padding: EdgeInsets.only(left: 30),
        child: ButtonArrowWidget(
          bleft: true,
          left: "/detailsTrail",
          bright: true,
          right: '/subConfigTrail',
        ),
      ),
    );
  }
}
