import 'package:MegaHackFive/app/theme/styles.dart';
import 'package:MegaHackFive/app/widgets/Button_Main/button_widget.dart';
import 'package:MegaHackFive/app/widgets/Button_arrows/buttonarrow_widget.dart';
import 'package:flutter/material.dart';

class DetailsTrailPage extends StatefulWidget {
  @override
  _DetailsTrailPageState createState() => _DetailsTrailPageState();
}

class _DetailsTrailPageState extends State<DetailsTrailPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                child: Image.asset(
                  "assets/illustrations/sky.png",
                  width: 270,
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Container(
                width: MediaQuery.of(context).size.width / 1.7,
                child: Text(
                  "Vamos criar sua trilha financeira!",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      color: primaryColor,
                      fontSize: 30,
                      fontWeight: FontWeight.bold),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Container(
                width: MediaQuery.of(context).size.width / 1.4,
                child: Text(
                  "Você selecionou os objetivos \"Viagem\" e \"Aposentadoria\". Vamos começar por qual?",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: darkColor,
                  ),
                ),
              ),
              SizedBox(
                height: 30,
              ),
              Container(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    ButtonMainWidget(
                      nome: "Viagem",
                      to: "/configTrail",
                      width: 150,
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    ButtonMainWidget(
                      nome: "Aposentadoria",
                      to: "",
                      width: 150,
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
      floatingActionButton: Container(
        padding: EdgeInsets.only(left: 30),
        child: ButtonArrowWidget(
          bleft: true,
        ),
      ),
    );
  }
}
