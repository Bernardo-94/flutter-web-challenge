// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:catar_world_cup/dashboard/final/widgets/FinalConfrontTable.views.dart';
import 'package:catar_world_cup/dashboard/shared/great-final-confront-table.views.dart';
import 'package:flutter/material.dart';
import '../quartas/widgets/quartas-confronts-tables.views.dart';
import '../shared/confronts-tables.views.dart';

class FinalView extends StatefulWidget {
  const FinalView({Key? key}) : super(key: key);

  @override
  _FinalViewState createState() => _FinalViewState();
}

class _FinalViewState extends State<FinalView> {
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return SizedBox(
      width: size.width * 0.9,
      height: size.height,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          _mainRow(context),
        ],
      ),
    );
  }

  Widget _mainRow(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        GreatFinalConfrontTable(
          confront: FinalConfrontTable(
            winner1: '13',
            winner2: '14',
            dateGame: '18/12',
            hourGame: '12h',
          ),
          confrontNumber: 15,
        ),
      ],
    );
  }
}
