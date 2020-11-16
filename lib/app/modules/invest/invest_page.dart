import 'package:MegaHackFive/app/theme/styles.dart';
import 'package:MegaHackFive/app/widgets/AppBarWidget/appBar_widget.dart';
import 'package:MegaHackFive/app/widgets/Button_Main/button_widget.dart';
import 'package:flutter/material.dart';

class InvestPage extends StatefulWidget {
  @override
  _InvestPageState createState() => _InvestPageState();
}

class _InvestPageState extends State<InvestPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(65),
        child: SafeArea(
          child: AppBarWidget(
            title: "Investir",
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
                height: 20,
              ),
              Center(
                child: ButtonMainWidget(
                  nome: "Transferir dinheiro",
                  to: "/investValue",
                  width: MediaQuery.of(context).size.width / 1.1,
                ),
              ),
              SizedBox(
                height: 30,
              ),
              Container(
                color: linecolor,
                height: 1,
                width: MediaQuery.of(context).size.width,
              ),
              SizedBox(
                height: 30,
              ),
              Center(
                child: Text(
                  "Qual você gostaria de investir?",
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
                        ],
                      )
                    ],
                  ),
                ),
              ),
            ],
          ),
        )),
      ),
    );
  }
}
