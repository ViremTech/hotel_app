import 'package:flutter/material.dart';

class NavigationMenu extends StatefulWidget {
  static int selectedIndex = 0;
  const NavigationMenu({super.key});

  @override
  State<NavigationMenu> createState() => _NavigationMenuState();
}

class _NavigationMenuState extends State<NavigationMenu> {
  @override
  Widget build(BuildContext context) {
    return NavigationBar(
      backgroundColor: const Color(0xff121A27),
      elevation: 0,
      height: 80,
      selectedIndex: NavigationMenu.selectedIndex,
      onDestinationSelected: (index) {
        setState(() {
          NavigationMenu.selectedIndex = index;
        });
      },
      destinations: [
        NavigationDestination(
            icon: Image.asset(
              'lib/myicons/home.png',
              height: 30.0,
              width: 30.0,
              color: Color(0xff12DC7C),
            ),
            label: ''),
        const NavigationDestination(
            icon: Icon(
              Icons.heat_pump_rounded,
              size: 30,
              color: Color(0xff12DC7C),
            ),
            label: ''),
        const NavigationDestination(
            icon: Icon(
              Icons.airplanemode_active_outlined,
              size: 30,
              color: Color(0xff12DC7C),
            ),
            label: ''),
        const NavigationDestination(
            icon: Icon(
              Icons.airplane_ticket_outlined,
              size: 30,
              color: Color(0xff12DC7C),
            ),
            label: ''),
        const NavigationDestination(
            icon: Icon(
              Icons.person_2_outlined,
              size: 30,
              color: Color(0xff12DC7C),
            ),
            label: ''),
      ],
    );
  }
}
