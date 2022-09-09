import 'package:catar_world_cup/navigation-bar/navigation-bar-custom.views.dart';
import 'package:catar_world_cup/start-pages/login/login.views.dart';
import 'package:catar_world_cup/start-pages/register/register.views.dart';
import 'package:flutter/material.dart';
//import 'package:praum_project_web_app/CalendarSpace/CalendarSpace.dart';
//import 'package:praum_project_web_app/Dashboard/Dashboard.dart';
//import 'package:praum_project_web_app/NavigationBar/NavigationBar.dart';

void main() {
  runApp(const MaterialApp(home: MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'World Cup 2022',
      theme: ThemeData(
        primarySwatch: Colors.red,
        primaryColor: Colors.red,
      ),
      initialRoute: '/login',
      routes: {
        // É aqui onde as rotas são definidas.

        '/home': (context) => const NavigationBarCustom(),
        '/login': (context) => const LoginPage(),
        '/register': (context) => const RegisterPage(),
      },

      // Vai ficar de exemplo por hora.

/*       initialRoute: decideInitialRoute(),
      routes: {
        //Define a rota aqui.
        '/': (context) => StartPage(),
        '/home': (context) => HomePage(),
        '/channels': (context) => ChannelsListPage(),
        '/courses': (context) => CoursesPage(),
        '/favorites': (context) => FavoritesPage(),,
      }, */
    );
  }
}
