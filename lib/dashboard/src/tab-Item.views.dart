import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class DasboardTabItem extends StatefulWidget {
  final bool active;
  final String title;
  final Function touched;
  DasboardTabItem({
    required this.active,
    required this.title,
    required this.touched,
  });

  @override
  DasboardTabItemState createState() => DasboardTabItemState();
}

class DasboardTabItemState extends State<DasboardTabItem> {
  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.transparent,
      child: InkWell(
          onTap: () {
            widget.touched();
          },
          child: AnimatedContainer(
            duration: const Duration(milliseconds: 475),
            height: 25.0,
            width: 70.0,
            decoration: BoxDecoration(
              color: widget.active
                  ? Colors.black
                  : Color.fromARGB(255, 135, 61, 85),
              borderRadius: BorderRadius.circular(20.0),
            ),
            child: Center(
              child: FittedBox(
                fit: BoxFit.fill,
                child: Text(
                  widget.title,
                  style: GoogleFonts.quicksand(
                    fontSize: 12.0,
                    color: widget.active ? Colors.white : Colors.black,
                  ),
                ),
              ),
            ),
          )),
    );
  }
}
