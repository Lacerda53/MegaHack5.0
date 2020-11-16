import 'package:MegaHackFive/app/theme/styles.dart';
import 'package:MegaHackFive/app/widgets/Button_arrows/buttonarrow_widget.dart';
import 'package:flutter/material.dart';

class ListTrailPage extends StatefulWidget {
  @override
  _ListTrailPageState createState() => _ListTrailPageState();
}

class _ListTrailPageState extends State<ListTrailPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          padding: EdgeInsets.all(15),
          child: Container(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                SizedBox(
                  height: 20,
                ),
                Text(
                  "Selecione seus principais objetivos ao investir",
                  style: TextStyle(
                      color: darkColor,
                      fontSize: 26,
                      fontWeight: FontWeight.bold),
                ),
                SizedBox(
                  height: 20,
                ),
                Expanded(
                  child: GridView.count(
                    crossAxisCount: 2,
                    mainAxisSpacing: 20,
                    children: [
                      Container(
                        child: Image.asset(
                          "assets/illustrations/item1.png",
                        ),
                      ),
                      Container(
                        child: Image.asset(
                          "assets/illustrations/item2.png",
                        ),
                      ),
                      Container(
                        child: Image.asset(
                          "assets/illustrations/item3.png",
                        ),
                      ),
                      Container(
                        child: Image.asset(
                          "assets/illustrations/item4.png",
                        ),
                      ),
                      Container(
                        child: Image.asset(
                          "assets/illustrations/item5.png",
                        ),
                      ),
                      Container(
                        child: Image.asset(
                          "assets/illustrations/item6.png",
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
      floatingActionButton: Container(
        padding: EdgeInsets.only(left: 30),
        child: ButtonArrowWidget(
          bleft: true,
          bright: true,
          right: '/detailsTrail',
        ),
      ),
    );
  }
}
