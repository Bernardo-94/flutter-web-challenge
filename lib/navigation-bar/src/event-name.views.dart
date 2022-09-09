import 'package:flutter/material.dart';

class EventName extends StatefulWidget {
  const EventName({Key? key}) : super(key: key);

  @override
  _EventNameState createState() => _EventNameState();
}

class _EventNameState extends State<EventName> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10),
      child: SizedBox(
        height: 90.0,
        width: 75.0,
        child: Image.asset(
          'assets/images/world_cup_2022_logo.png',
          fit: BoxFit.fill,
        ),
      ),
    );
  }
}
