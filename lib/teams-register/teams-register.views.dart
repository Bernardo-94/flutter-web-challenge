import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../navigation-bar/navigation-bar-custom.views.dart';

class TeamsRegister extends StatefulWidget {
  const TeamsRegister({Key? key}) : super(key: key);

  @override
  State<TeamsRegister> createState() => _TeamsRegisterState();
}

class _TeamsRegisterState extends State<TeamsRegister> {
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return SingleChildScrollView(
      scrollDirection: Axis.vertical,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          const SizedBox(
            height: 25,
          ),
          Row(
            children: [
              const SizedBox(
                width: 30,
              ),
              Text(
                'Registro de Seleções',
                style: GoogleFonts.quicksand(
                  fontWeight: FontWeight.bold,
                  fontSize: 20.0,
                ),
              ),
            ],
          ),
          SizedBox(
            height: 40,
          ),
          Row(
            children: [
              SizedBox(
                width: 25,
              ),
              ElevatedButton(
                onPressed: () {
                  _registerDialog();
                },
                child: Text('Cadastrar nova equipe'),
                style: ElevatedButton.styleFrom(
                  shape: StadiumBorder(),
                  minimumSize: Size(300, 40),
                ),
              )
            ],
          )
        ],
      ),
    );
  }

  Future<void> _registerDialog() async {
    return showDialog<void>(
      context: context,
      barrierDismissible: false, // user must tap button!
      builder: (BuildContext context) {
        return AlertDialog(
          title: const Text('Insira o nome da equipe no campo abaixo'),
          content: SingleChildScrollView(
            child: ListBody(
              children: const <Widget>[
                TextField(
                  obscureText: false,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: 'Equipe',
                  ),
                ),
              ],
            ),
          ),
          actions: <Widget>[
            TextButton(
              child: const Text('Cadastrar'),
              onPressed: () {
                Navigator.of(context).pop();
                _showMyDialog();
              },
            ),
          ],
        );
      },
    );
  }

  Future<void> _showMyDialog() async {
    return showDialog<void>(
      context: context,
      barrierDismissible: false, // user must tap button!
      builder: (BuildContext context) {
        return AlertDialog(
          content: SingleChildScrollView(
            child: ListBody(
              children: const <Widget>[
                Text('Equipe cadastrada com sucesso!'),
              ],
            ),
          ),
          actions: <Widget>[
            TextButton(
              child: const Text('ok'),
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
