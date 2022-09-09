// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class QuartasConfrontsTables extends StatelessWidget {
  final String winner1;
  final String winner2;
  final String dateGame;
  final String hourGame;

  const QuartasConfrontsTables({
    Key? key,
    required this.winner1,
    required this.winner2,
    required this.dateGame,
    required this.hourGame,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Text(
          'Quartas de Final',
          style: GoogleFonts.play(
            fontWeight: FontWeight.bold,
            fontSize: 15.0,
            color: const Color.fromARGB(255, 135, 61, 85),
          ),
        ),
        SizedBox(
          height: 3,
        ),
        Text(
          '$dateGame $hourGame',
          style: GoogleFonts.play(
            fontWeight: FontWeight.bold,
            fontSize: 10.0,
          ),
        ),
        SizedBox(
          height: 5,
        ),
        _confrontTableColumns(context),
        SizedBox(
          height: 3,
        ),
        _confrontTablesRows(context, winner1),
        SizedBox(
          height: 3,
        ),
        _confrontTablesRows(context, winner2),
      ],
    );
  }

  Widget _confrontTableColumns(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: const [
        Text(
          'Equips',
          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 12),
        ),
        SizedBox(
          width: 80,
        ),
        Text(
          'Goals',
          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 12),
        ),
        SizedBox(
          width: 10,
        ),
        Text(
          'Penalties',
          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 12),
        ),
      ],
    );
  }

  Widget _confrontTablesRows(BuildContext context, String confront) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        SizedBox(
          width: 20,
        ),
        Text(
          'Win. confront $confront',
          style: GoogleFonts.play(
            fontWeight: FontWeight.bold,
            fontSize: 10.0,
          ),
        ),
        SizedBox(
          width: 80,
        ),
        Text(
          '0',
          style: GoogleFonts.play(
            fontWeight: FontWeight.bold,
            fontSize: 10.0,
          ),
        ),
        SizedBox(
          width: 45,
        ),
        Text(
          '0',
          style: GoogleFonts.play(
            fontWeight: FontWeight.bold,
            fontSize: 10.0,
          ),
        ),
      ],
    );
  }
}
