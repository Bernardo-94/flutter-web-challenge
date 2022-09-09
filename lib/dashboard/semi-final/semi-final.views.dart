// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:catar_world_cup/dashboard/semi-final/widgets/semi-final-confronts-tables.views.dart';
import 'package:flutter/material.dart';
import '../shared/confronts-tables.views.dart';

class SemiFinalView extends StatefulWidget {
  const SemiFinalView({Key? key}) : super(key: key);

  @override
  _SemiFinalViewState createState() => _SemiFinalViewState();
}

class _SemiFinalViewState extends State<SemiFinalView> {
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
        ],
      ),
    );
  }

  Widget _firstRow(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        ConfrontsTables(
          confront: SemiFinalConfrontsTables(
            winner1: ' 9',
            winner2: '10',
            dateGame: '13/12',
            hourGame: '16h',
          ),
          confrontNumber: 13,
        ),
        ConfrontsTables(
          confront: SemiFinalConfrontsTables(
            winner1: '11',
            winner2: '12',
            dateGame: '14/12',
            hourGame: '16h',
          ),
          confrontNumber: 14,
        ),
      ],
    );
  }
}
