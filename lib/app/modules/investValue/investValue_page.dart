import 'package:MegaHackFive/app/theme/styles.dart';
import 'package:MegaHackFive/app/widgets/AppBarWidget/appBar_widget.dart';
import 'package:MegaHackFive/app/widgets/Button_Main/button_widget.dart';
import 'package:flutter/material.dart';

class InvestValuePage extends StatefulWidget {
  @override
  _InvestValuePageState createState() => _InvestValuePageState();
}

class _InvestValuePageState extends State<InvestValuePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(65),
        child: SafeArea(
          child: AppBarWidget(
            back: true,
            toback: "/invest",
            title: "Cashback",
          ),
        ),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "Quanto você gostaria\nde investir?",
              textAlign: TextAlign.center,
              style: TextStyle(
                color: darkColor,
                fontSize: 25,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Container(
              margin: EdgeInsets.only(left: 60, right: 60),
              child: TextField(
                keyboardType: TextInputType.number,
                decoration: InputDecoration(
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(8)),
                    borderSide:
                        BorderSide(color: Colors.greenAccent, width: 2.0),
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(8)),
                    borderSide:
                        BorderSide(color: Color(0xFFD9D0E3), width: 1.0),
                  ),
                  hintText: "R\$ 0,00",
                ),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            ButtonMainWidget(
              nome: "Investir",
              width: MediaQuery.of(context).size.width/1.4,
            )
          ],
        ),
      ),
    );
  }
}