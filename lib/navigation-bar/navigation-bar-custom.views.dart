import 'package:catar_world_cup/dashboard/dashboard.views.dart';
import 'package:catar_world_cup/equip-members-register/equip-members-register.dart';
import 'package:catar_world_cup/navigation-bar/src/event-name.views.dart';
import 'package:catar_world_cup/navigation-bar/src/nav-bar-item-custom.views.dart';
import 'package:catar_world_cup/teams-register/teams-register.views.dart';
import 'package:flutter/material.dart';
import 'package:flutter_vector_icons/flutter_vector_icons.dart';

import '../start-pages/login/login.views.dart';

class NavigationBarCustom extends StatefulWidget {
  const NavigationBarCustom({Key? key}) : super(key: key);

  @override
  _NavigationBarCustomState createState() => _NavigationBarCustomState();
}

class _NavigationBarCustomState extends State<NavigationBarCustom> {
  List<bool> selected = [true, false, false];
  late Widget navButton = DashboardPage();

  void select(int n) {
    for (int i = 0; i < 3; i++) {
      if (i != n) {
        selected[i] = false;
      } else {
        selected[i] = true;

        switch (i) {
          case 0:
            navButton = DashboardPage();
            break;
          case 1:
            navButton = TeamsRegister();
            break;
          case 2:
            navButton = EquipMembersRegister();
            break;
          default:
            navButton = DashboardPage();
            break;
        }
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      body: Container(
        height: size.height,
        width: size.width,
        color: Color.fromARGB(255, 135, 61, 85),
        child: Stack(
          children: [
            Align(
              alignment: Alignment.centerLeft,
              child: Row(
                children: [
                  Container(
                    height: MediaQuery.of(context).size.height,
                    width: 100.0,
                    color: Color(0xff333951),
                    child: Stack(
                      children: [
                        EventName(),
                        Align(
                          alignment: Alignment.center,
                          child: _buildNavButtons(context),
                        ),
                      ],
                    ),
                  ),
                  _buildBody(context, navButton),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildNavButtons(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Container(
      height: size.height * 0.5,
      child: Column(
        children: [
          NavBarItemCustom(
            icon: Feather.home,
            active: selected[0],
            touched: () {
              setState(() {
                select(0);
              });
            },
          ),
          NavBarItemCustom(
            icon: Feather.shield,
            active: selected[1],
            touched: () {
              setState(() {
                select(1);
              });
            },
          ),
          NavBarItemCustom(
            icon: Feather.users,
            active: selected[2],
            touched: () {
              setState(() {
                select(2);
              });
            },
          ),
          SizedBox(
            height: size.height * 0.1,
          ),
          _logutButton(context),
        ],
      ),
    );
  }

  Widget _buildBody(BuildContext context, Widget navButton) {
    var size = MediaQuery.of(context).size;
    return SizedBox(
      height: size.height,
      child: navButton,
    );
  }

  Widget _logutButton(BuildContext context) {
    return Material(
      color: Colors.transparent,
      child: InkWell(
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => LoginPage(),
            ),
          );
        },
        child: SizedBox(
          height: 60.0,
          width: 80.0,
          child: Icon(
            Feather.log_out,
            color: Colors.white54,
            size: 19.0,
          ),
        ),
      ),
    );
  }
}
