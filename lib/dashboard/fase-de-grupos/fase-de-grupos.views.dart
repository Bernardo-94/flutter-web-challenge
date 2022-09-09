import 'package:catar_world_cup/dashboard/fase-de-grupos/widgets/goups-tables.views.dart';
import 'package:flutter/material.dart';

class GroupStageView extends StatefulWidget {
  const GroupStageView({Key? key}) : super(key: key);

  @override
  _GroupStageViewState createState() => _GroupStageViewState();
}

class _GroupStageViewState extends State<GroupStageView> {
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Container(
      width: size.width * 0.9,
      height: size.height,
      child: GridView.count(
        primary: false,
        padding: const EdgeInsets.all(20),
        crossAxisSpacing: 10,
        mainAxisSpacing: 10,
        crossAxisCount: 4,
        children: const <Widget>[
          GroupTables(
            grupo: 'A',
          ),
          GroupTables(
            grupo: 'B',
          ),
          GroupTables(
            grupo: 'C',
          ),
          GroupTables(
            grupo: 'D',
          ),
          GroupTables(
            grupo: 'E',
          ),
          GroupTables(
            grupo: 'F',
          ),
          GroupTables(
            grupo: 'G',
          ),
          GroupTables(
            grupo: 'H',
          ),
        ],
      ),
    );
  }
}
