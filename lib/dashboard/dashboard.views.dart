import 'package:catar_world_cup/dashboard/fase-de-grupos/fase-de-grupos.views.dart';
import 'package:catar_world_cup/dashboard/final/final.views.dart';
import 'package:catar_world_cup/dashboard/oitavas/oitavas.views.dart';
import 'package:catar_world_cup/dashboard/quartas/quartas.views.dart';
import 'package:catar_world_cup/dashboard/semi-final/semi-final.views.dart';
import 'package:catar_world_cup/dashboard/src/tab-Item.views.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class DashboardPage extends StatefulWidget {
  const DashboardPage({Key? key}) : super(key: key);

  @override
  State<DashboardPage> createState() => _DashboardPageState();
}

class _DashboardPageState extends State<DashboardPage> {
  List<bool> selected = [true, false, false, false, false];
  late Widget _tabView = GroupStageView();

  void select(int n) {
    for (int i = 0; i < 5; i++) {
      if (i != n) {
        selected[i] = false;
      } else {
        selected[i] = true;

        switch (i) {
          case 0:
            _tabView = GroupStageView();
            ;
            break;
          case 1:
            _tabView = OitavasView();
            ;
            break;
          case 2:
            _tabView = QuartasView();
            ;
            break;
          case 3:
            _tabView = SemiFinalView();
            ;
            break;
          case 4:
            _tabView = FinalView();
            ;
            break;
          default:
            _tabView = GroupStageView();
            ;
            break;
        }
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.vertical,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            margin: EdgeInsets.only(left: 30.0, top: 25.0, bottom: 10.0),
            child: Text(
              'Dasboard',
              style: GoogleFonts.quicksand(
                fontWeight: FontWeight.bold,
                fontSize: 20.0,
              ),
            ),
          ),
          _dashboardTabs(context),
          SizedBox(
            height: 10,
          ),
          _tabView,
        ],
      ),
    );
  }

  Widget _dashboardTabs(BuildContext context) {
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
