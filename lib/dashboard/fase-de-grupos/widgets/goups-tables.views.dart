import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class GroupTables extends StatelessWidget {
  final String grupo;
  const GroupTables({Key? key, required this.grupo}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 40,
      height: 300,
      child: Card(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(
              height: 5,
            ),
            Text(
              'Grupo $grupo',
              style: GoogleFonts.quicksand(
                fontWeight: FontWeight.bold,
                fontSize: 20.0,
                color: Color.fromARGB(255, 135, 61, 85),
              ),
            ),
            SizedBox(
              height: 5,
            ),
            DataTable(
              dataRowHeight: 40,
              dataTextStyle: TextStyle(
                fontSize: 10,
              ),
              columns: const <DataColumn>[
                DataColumn(
                  label: Expanded(
                    child: Text(
                      'Equipe',
                      style: TextStyle(fontStyle: FontStyle.italic),
                    ),
                  ),
                ),
                DataColumn(
                  label: Expanded(
                    child: Text(
                      'Pts',
                      style: TextStyle(fontStyle: FontStyle.italic),
                    ),
                  ),
                ),
                DataColumn(
                  label: Expanded(
                    child: Text(
                      'Goals',
                      style: TextStyle(fontStyle: FontStyle.italic),
                    ),
                  ),
                ),
              ],
              rows: <DataRow>[
                DataRow(
                  cells: <DataCell>[
                    DataCell(Text('Seleção 1 $grupo')),
                    const DataCell(Text('0')),
                    const DataCell(Text('0')),
                  ],
                ),
                DataRow(
                  cells: <DataCell>[
                    DataCell(Text('Seleção 2 $grupo')),
                    const DataCell(Text('0')),
                    const DataCell(Text('0')),
                  ],
                ),
                DataRow(
                  cells: <DataCell>[
                    DataCell(Text('Seleção 3 $grupo')),
                    const DataCell(Text('0')),
                    const DataCell(Text('0')),
                  ],
                ),
                DataRow(
                  cells: <DataCell>[
                    DataCell(Text('Seleção 4 $grupo')),
                    const DataCell(Text('0')),
                    const DataCell(Text('0')),
                  ],
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                TextButton(
                  onPressed: () {
                    _showMyDialog(context, grupo);
                  },
                  child: Text(
                    'Ver confrontos',
                    style: TextStyle(
                      color: Colors.blue.shade600,
                    ),
                  ),
                ),
                const SizedBox(
                  width: 5,
                )
              ],
            )
          ],
        ),
      ),
    );
  }

  Widget _confronts(BuildContext context, String grupo) {
    return DataTable(
      dataRowHeight: 40,
      dataTextStyle: const TextStyle(
        fontSize: 10,
      ),
      columns: const <DataColumn>[
        DataColumn(
          label: Expanded(
            child: Text(
              'Confronto',
              style: TextStyle(fontStyle: FontStyle.italic),
            ),
          ),
        ),
        DataColumn(
          label: Expanded(
            child: Text(
              'Dia',
              style: TextStyle(fontStyle: FontStyle.italic),
            ),
          ),
        ),
        DataColumn(
          label: Expanded(
            child: Text(
              'Horário',
              style: TextStyle(fontStyle: FontStyle.italic),
            ),
          ),
        ),
      ],
      rows: <DataRow>[
        DataRow(
          cells: <DataCell>[
            DataCell(Text('Seleção 1 $grupo x Seleção 2 $grupo')),
            const DataCell(Text('20/11')),
            const DataCell(Text('13h')),
          ],
        ),
        DataRow(
          cells: <DataCell>[
            DataCell(Text('Seleção 3 $grupo x Seleção 4 $grupo')),
            const DataCell(Text('21/11')),
            const DataCell(Text('10h')),
          ],
        ),
        DataRow(
          cells: <DataCell>[
            DataCell(Text('Seleção 1 $grupo x Seleção 3 $grupo')),
            const DataCell(Text('24/11')),
            const DataCell(Text('11h')),
          ],
        ),
        DataRow(
          cells: <DataCell>[
            DataCell(Text('Seleção 2 $grupo x Seleção 4 $grupo')),
            const DataCell(Text('25/11')),
            const DataCell(Text('13h')),
          ],
        ),
        DataRow(
          cells: <DataCell>[
            DataCell(Text('Seleção 1 $grupo x Seleção 4 $grupo')),
            const DataCell(Text('30/11')),
            const DataCell(Text('15h')),
          ],
        ),
        DataRow(
          cells: <DataCell>[
            DataCell(Text('Seleção 2 $grupo x Seleção 3 $grupo')),
            const DataCell(Text('30/11')),
            const DataCell(Text('10h')),
          ],
        ),
      ],
    );
  }

  Future<void> _showMyDialog(BuildContext context, String grupo) async {
    return showDialog<void>(
      context: context,
      barrierDismissible: false, // user must tap button!
      builder: (BuildContext context) {
        return AlertDialog(
          title: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text('Confrontos Grupo $grupo'),
            ],
          ),
          titleTextStyle: GoogleFonts.quicksand(
            fontWeight: FontWeight.bold,
            fontSize: 20.0,
            color: Color.fromARGB(255, 135, 61, 85),
          ),
          content: SingleChildScrollView(
            child: _confronts(context, grupo),
          ),
          actions: <Widget>[
            TextButton(
              child: const Text('Fechar'),
              onPressed: () {
                Navigator.of(context).pop();
              },
            ),
          ],
        );
      },
    );
  }
}
