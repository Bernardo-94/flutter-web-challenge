import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class GreatFinalConfrontTable extends StatefulWidget {
  final Widget confront;
  final int confrontNumber;
  const GreatFinalConfrontTable(
      {Key? key, required this.confront, required this.confrontNumber})
      : super(key: key);

  @override
  _GreatFinalConfrontTableState createState() =>
      _GreatFinalConfrontTableState();
}

class _GreatFinalConfrontTableState extends State<GreatFinalConfrontTable> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 500,
      height: 400,
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
                fontSize: 30.0,
                color: const Color.fromARGB(255, 135, 61, 85),
              ),
            ),
            SizedBox(
              height: 240.0,
              width: 180.0,
              child: Image.asset(
                'assets/images/taca_copa.png',
                fit: BoxFit.fill,
              ),
            ),
            widget.confront,
          ],
        ),
      ),
    );
  }
}
