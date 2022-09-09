import 'package:catar_world_cup/dashboard/fase-de-grupos/widgets/goups-tables.views.dart';
import 'package:catar_world_cup/dashboard/oitavas/widgets/oitavas-confronts-tables.views.dart';
import 'package:catar_world_cup/dashboard/shared/confronts-tables.views.dart';
import 'package:flutter/material.dart';

class OitavasView extends StatefulWidget {
  const OitavasView({Key? key}) : super(key: key);

  @override
  _OitavasViewState createState() => _OitavasViewState();
}

class _OitavasViewState extends State<OitavasView> {
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Container(
      width: size.width * 0.9,
      height: size.height,
      child: GridView.count(
        primary: false,
        padding: const EdgeInsets.all(10),
        crossAxisSpacing: 10,
        mainAxisSpacing: 10,
        crossAxisCount: 4,
        children: const <Widget>[
          ConfrontsTables(
            confront: OitavasConfrontsTables(
              group1: 'A',
              group2: 'B',
              dateGame: '03/12',
              hourGame: '12h',
            ),
            confrontNumber: 1,
          ),
          ConfrontsTables(
            confront: OitavasConfrontsTables(
              group1: 'B',
              group2: 'C',
              dateGame: '03/12',
              hourGame: '16h',
            ),
            confrontNumber: 2,
          ),
          ConfrontsTables(
            confront: OitavasConfrontsTables(
              group1: 'C',
              group2: 'D',
              dateGame: '05/12',
              hourGame: '12h',
            ),
            confrontNumber: 3,
          ),
          ConfrontsTables(
            confront: OitavasConfrontsTables(
              group1: 'D',
              group2: 'E',
              dateGame: '05/12',
              hourGame: '16h',
            ),
            confrontNumber: 4,
          ),
          ConfrontsTables(
            confront: OitavasConfrontsTables(
              group1: 'E',
              group2: 'F',
              dateGame: '04/12',
              hourGame: '12h',
            ),
            confrontNumber: 5,
          ),
          ConfrontsTables(
            confront: OitavasConfrontsTables(
              group1: 'F',
              group2: 'G',
              dateGame: '04/12',
              hourGame: '12h',
            ),
            confrontNumber: 6,
          ),
          ConfrontsTables(
            confront: OitavasConfrontsTables(
              group1: 'G',
              group2: 'H',
              dateGame: '06/12',
              hourGame: '12h',
            ),
            confrontNumber: 7,
          ),
          ConfrontsTables(
            confront: OitavasConfrontsTables(
              group1: 'H',
              group2: 'G',
              dateGame: '05/12',
              hourGame: '16h',
            ),
            confrontNumber: 8,
          ),
        ],
      ),
    );
  }
}
