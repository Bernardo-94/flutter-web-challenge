// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:catar_world_cup/dashboard/quartas/widgets/quartas-confronts-tables.views.dart';
import 'package:catar_world_cup/dashboard/shared/confronts-tables.views.dart';
import 'package:flutter/material.dart';

class QuartasView extends StatefulWidget {
  const QuartasView({Key? key}) : super(key: key);

  @override
  _QuartasViewState createState() => _QuartasViewState();
}

class _QuartasViewState extends State<QuartasView> {
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return SizedBox(
      width: size.width * 0.9,
      height: size.height,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          _firstRow(context),
          SizedBox(
            height: 10,
          ),
          _secondRow(context),
        ],
      ),
    );
  }

  Widget _firstRow(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        ConfrontsTables(
          confront: QuartasConfrontsTables(
            winner1: '1',
            winner2: '2',
            dateGame: '09/12',
            hourGame: '16h',
          ),
          confrontNumber: 9,
        ),
        ConfrontsTables(
          confront: QuartasConfrontsTables(
            winner1: '3',
            winner2: '4',
            dateGame: '09/12',
            hourGame: '12h',
          ),
          confrontNumber: 10,
        ),
      ],
    );
  }

  Widget _secondRow(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        ConfrontsTables(
          confront: QuartasConfrontsTables(
            winner1: '5',
            winner2: '6',
            dateGame: '10/12',
            hourGame: '16h',
          ),
          confrontNumber: 11,
        ),
        ConfrontsTables(
          confront: QuartasConfrontsTables(
            winner1: '7',
            winner2: '8',
            dateGame: '10/12',
            hourGame: '12h',
          ),
          confrontNumber: 12,
        ),
      ],
    );
  }
}
