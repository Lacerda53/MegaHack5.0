import 'package:MegaHackFive/app/theme/styles.dart';
import 'package:MegaHackFive/app/widgets/Button_Main/button_widget.dart';
import 'package:flutter/material.dart';

class WelcomePage extends StatefulWidget {
  @override
  _WelcomePageState createState() => _WelcomePageState();
}

class _WelcomePageState extends State<WelcomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset(
                "assets/illustrations/1.png",
                width: 250,
              ),
              SizedBox(
                height: 10,
              ),
              Text(
                "Olá, Guilherme!",
                style: TextStyle(
                    color: primaryColor,
                    fontSize: 30,
                    fontWeight: FontWeight.bold),
              ),
              SizedBox(
                height: 10,
              ),
              Container(
                width: 300,
                child: Text(
                  "Queremos descomplicar o \"economês\", " +
                      "te fazendo investir de forma fácil e descomplicada" +
                      " para que você realize os seus desejos de vida.",
                  style: TextStyle(
                    color: darkColor,
                  ),
                ),
              ),
              SizedBox(
                height: 40,
              ),
              ButtonMainWidget(
                nome: "Começar",
                to: "/listTrail",
                width: MediaQuery.of(context).size.width / 1.1,
              )
            ],
          ),
        ),
      ),
    );
  }
}
