import 'package:MegaHackFive/app/theme/styles.dart';
import 'package:MegaHackFive/app/widgets/Button_Main/button_widget.dart';
import 'package:MegaHackFive/app/widgets/Input/input_widget.dart';
import 'package:MegaHackFive/app/widgets/Logo/logo_widget.dart';
import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  bool accept = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: 30,
              ),
              LogoWidget(),
              SizedBox(height: 30),
              Center(
                child: Text(
                  "Cadastro",
                  style: TextStyle(
                    color: darkColor,
                    fontSize: 25,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              SizedBox(height: 10),
              InputWidget(
                label: "Nome",
                type: TextInputType.name,
                place: "Nome Sobrenome",
              ),
              InputWidget(
                label: "Email",
                type: TextInputType.emailAddress,
                place: "nome@email.com",
              ),
              InputWidget(
                label: "Senha",
                type: TextInputType.visiblePassword,
                place: "*******",
                obscure: true,
              ),
              InputWidget(
                label: "Confirmar Senha",
                type: TextInputType.visiblePassword,
                place: "*******",
                obscure: true,
              ),
              SizedBox(height: 10),
              Row(
                children: [
                  Checkbox(
                      value: accept,
                      activeColor: primaryColor,
                      onChanged: (bool value) {
                        setState(() {
                          accept = value;
                        });
                      }),
                  Text(
                    "Concordo com os termos de uso",
                    style: TextStyle(color: baseColor, fontSize: 16),
                  ),
                ],
              ),
              SizedBox(
                height: 10,
              ),
              Center(
                child: ButtonMainWidget(
                  nome: "Cadastrar",
                  to: '/welcome',
                  width: MediaQuery.of(context).size.width / 1.1,
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
