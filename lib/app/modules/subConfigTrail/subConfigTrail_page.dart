import 'package:MegaHackFive/app/theme/styles.dart';
import 'package:MegaHackFive/app/widgets/Button_arrows/buttonarrow_widget.dart';
import 'package:flutter/material.dart';

class SubConfigTrailPage extends StatefulWidget {
  @override
  _SubConfigTrailPageState createState() => _SubConfigTrailPageState();
}

class _SubConfigTrailPageState extends State<SubConfigTrailPage> {
  int selectRadio;

  @override
  void initState() {
    super.initState();
    selectRadio = 1;
  }

  setSelectedRadio(int val) {
    setState(() {
      selectRadio = val;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
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
          SizedBox(
            height: 20,
          ),
          Container(
            padding: EdgeInsets.all(15),
            child: Text(
              "Para você, ter um futuro sustentável, significa:",
              style: TextStyle(
                  color: darkColor, fontSize: 18, fontWeight: FontWeight.bold),
            ),
          ),
          RadioListTile(
            title:
                Text("Ter segurança financeira, ainda que seja pouca quantia"),
            value: 1,
            activeColor: primaryColor,
            groupValue: selectRadio,
            onChanged: (index) {
              setSelectedRadio(index);
            },
          ),
          SizedBox(
            height: 5,
          ),
          RadioListTile(
            title: Text(
                "Guardar a maior parte do dinheiro de maneira cautelosa e, ao mesmo tempo,  separar uma parte menor para conseguir um rendimento maior"),
            value: 2,
            activeColor: primaryColor,
            groupValue: selectRadio,
            onChanged: (index) {
              setSelectedRadio(index);
            },
          ),
          SizedBox(
            height: 5,
          ),
          RadioListTile(
            title: Text(
                "Ter cada vez mais dinheiro rendendo, ainda que tenha riscos"),
            value: 3,
            activeColor: primaryColor,
            groupValue: selectRadio,
            onChanged: (index) {
              setSelectedRadio(index);
            },
          ),
        ]),
      ),
      floatingActionButton: Container(
        padding: EdgeInsets.only(left: 30),
        child: ButtonArrowWidget(
          bleft: true,
          left: "/configTrail",
          bright: true,
          right: "/finalTrail",
        ),
      ),
    );
  }
}
