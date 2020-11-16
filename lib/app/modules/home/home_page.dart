import 'package:MegaHackFive/app/modules/cashback/cashback_page.dart';
import 'package:MegaHackFive/app/modules/dashboard/dashboard_page.dart';
import 'package:MegaHackFive/app/modules/invest/invest_page.dart';
import 'package:MegaHackFive/app/theme/styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'home_controller.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends ModularState<HomePage, HomeController> {
int currentIndex = 0;

    final List<Widget> _children = [
      DashboardPage(),
      InvestPage(),
      CashbackPage(),
    ];
  @override
  Widget build(BuildContext context) {
    
    return Scaffold(
      body: _children[currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: currentIndex,
        backgroundColor: purplebg,
        selectedItemColor: lighColor,
        unselectedItemColor: appBarColor,
        selectedFontSize: 15,
        iconSize: 28,
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.dashboard),
            label: "Dashboard",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.attach_money),
            label: "Investir",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.loop),
            label: "Cashback",
          ),
        ],
        onTap: (index) {
          setState(()=>{
            currentIndex = index,
          });
        },
      ),
    );
  }
}
