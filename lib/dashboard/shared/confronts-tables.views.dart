import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ConfrontsTables extends StatefulWidget {
  final Widget confront;
  final int confrontNumber;
  const ConfrontsTables(
      {Key? key, required this.confront, required this.confrontNumber})
      : super(key: key);

  @override
  _ConfrontsTablesState createState() => _ConfrontsTablesState();
}

class _ConfrontsTablesState extends State<ConfrontsTables> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 300,
      height: 300,
      child: Card(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const SizedBox(
              height: 5,
            ),
            Text(
              'Confronto ${widget.confrontNumber}',
              style: GoogleFonts.play(
                fontWeight: FontWeight.bold,
                fontSize: 20.0,
                color: const Color.fromARGB(255, 135, 61, 85),
              ),
            ),
            const SizedBox(
              height: 5,
            ),
            SizedBox(
              height: 150.0,
              width: 120.0,
              child: Image.asset(
                'assets/images/world_cup_2022_logo.png',
                fit: BoxFit.fill,
              ),
            ),
            const SizedBox(
              height: 5,
            ),
            widget.confront,
          ],
        ),
      ),
    );
  }

/*   Widget _confrontTableColumns(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: const [
        Text('Equips'),
        SizedBox(
          width: 80,
        ),
        Text('Goals'),
        SizedBox(
          width: 10,
        ),
        Text('Penalties'),
      ],
    );
  } */

/*   Widget _confrontTablesRows(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: const [
        SizedBox(
          width: 10,
        ),
        Text('1º Colocado A '),
        SizedBox(
          width: 60,
        ),
        Text('0'),
        SizedBox(
          width: 50,
        ),
        Text('0'),
      ],
    );
  } */
}
