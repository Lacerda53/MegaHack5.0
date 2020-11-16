import 'dart:ui';
import 'package:MegaHackFive/app/theme/styles.dart';
import 'package:MegaHackFive/app/widgets/AppBarWidget/appBar_widget.dart';
import 'package:MegaHackFive/app/widgets/Button_Main/button_widget.dart';
import 'package:MegaHackFive/app/widgets/Input/input_widget.dart';
import 'package:flutter/material.dart';

class ProfilePage extends StatefulWidget {
  @override
  _ProfilePageState createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  bool accept = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(65),
        child: SafeArea(
          child: AppBarWidget(
            title: "Perfil",
            back: true,
            toback: "/home",
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: 40),
              Container(
                padding: EdgeInsets.all(15),
                child: Text(
                  "Depositos e retiradas",
                  style: TextStyle(
                    color: darkColor,
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              Container(
                padding: EdgeInsets.all(15),
                child: Text(
                    "Banco: 000 (Órama)\nAgência: 0000\nConta Corrente: 00000000000\nFavorecido: mesma titularidade"),
              ),
              SizedBox(height: 5),
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
                label: "Telefone",
                type: TextInputType.phone,
                place: "(099) 9 9999 - 9999",
              ),
              SizedBox(
                height: 40,
              ),
              Center(
                child: ButtonMainWidget(
                  nome: "Salvar informações",
                  to: '/dashboard',
                  width: MediaQuery.of(context).size.width / 1.1,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
