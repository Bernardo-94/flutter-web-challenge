import 'package:catar_world_cup/dashboard/src/tab-Item.views.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class DashboardTabs extends StatefulWidget {
  const DashboardTabs({Key? key}) : super(key: key);

  @override
  State<DashboardTabs> createState() => _DashboardTabsState();
}

class _DashboardTabsState extends State<DashboardTabs> {
  List<bool> selected = [true, false, false, false, false];

  void select(int n) {
    for (int i = 0; i < 5; i++) {
      if (i != n) {
        selected[i] = false;
      } else {
        selected[i] = true;
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(left: 32.0),
      child: Row(
        children: [
          DasboardTabItem(
            active: selected[0],
            title: 'Fase de Grupos',
            touched: () {
              setState(() {
                select(0);
              });
            },
          ),
          SizedBox(
            width: 15.0,
          ),
          DasboardTabItem(
            active: selected[1],
            title: 'Oitavas',
            touched: () {
              setState(() {
                select(1);
              });
            },
          ),
          SizedBox(
            width: 15.0,
          ),
          DasboardTabItem(
            active: selected[2],
            title: 'Quartas',
            touched: () {
              setState(() {
                select(2);
              });
            },
          ),
          SizedBox(
            width: 15.0,
          ),
          DasboardTabItem(
            active: selected[3],
            title: 'Semi',
            touched: () {
              setState(() {
                select(3);
              });
            },
          ),
          SizedBox(
            width: 15.0,
          ),
          DasboardTabItem(
            active: selected[4],
            title: 'Final',
            touched: () {
              setState(() {
                select(4);
              });
            },
          ),
        ],
      ),
    );
  }
}
