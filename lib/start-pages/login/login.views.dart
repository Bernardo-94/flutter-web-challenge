import 'package:catar_world_cup/navigation-bar/navigation-bar-custom.views.dart';
import 'package:catar_world_cup/start-pages/register/register.views.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'login.controller.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    var controller = LoginController();
    return Scaffold(
      body: Container(
        width: size.width,
        height: size.height,
        color: Color.fromARGB(255, 63, 29, 39),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(
              width: size.width * 0.25,
            ),
            Container(
              height: size.height * 0.6,
              width: size.width * 0.2,
              child: Image.asset(
                'assets/images/world_cup_2022_logo.png',
                fit: BoxFit.fill,
              ),
            ),
            SizedBox(
              width: size.width * 0.15,
            ),
            Container(
              width: size.width * 0.36,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Login',
                    textAlign: TextAlign.left,
                    style: GoogleFonts.kanit(
                      textStyle: const TextStyle(
                        fontSize: 45,
                        color: Colors.white,
                      ),
                    ),
                  ),
                  SizedBox(
                    height: size.height * 0.01,
                  ),
                  const TextField(
                    obscureText: false,
                    decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      labelText: 'E-mail',
                    ),
                  ),
                  SizedBox(
                    height: size.height * 0.03,
                  ),
                  const TextField(
                    obscureText: true,
                    decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      labelText: 'Senha',
                    ),
                  ),
                  SizedBox(
                    height: size.height * 0.03,
                  ),
                  Row(mainAxisAlignment: MainAxisAlignment.center, children: [
                    ElevatedButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => NavigationBarCustom(),
                          ),
                        );
                      },
                      child: Text('Logar'),
                      style: ElevatedButton.styleFrom(
                        shape: StadiumBorder(),
                        minimumSize: Size(300, 40),
                      ),
                    )
                  ]),
                  SizedBox(
                    height: size.height * 0.02,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Text('Ainda não possui cadastro?'),
                      const SizedBox(
                        width: 5,
                      ),
                      TextButton(
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => RegisterPage(),
                            ),
                          );
                        },
                        child: Text(
                          'Clique Aqui!',
                          style: TextStyle(
                            color: Colors.blue.shade600,
                          ),
                        ),
                      ),
                    ],
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
