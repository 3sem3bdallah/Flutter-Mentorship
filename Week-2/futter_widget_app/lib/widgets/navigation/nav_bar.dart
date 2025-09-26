import 'package:flutter/material.dart';

class NavBar extends StatefulWidget {
  const NavBar({super.key});

  @override
  State<NavBar> createState() => _NavBarState();
}

class _NavBarState extends State<NavBar> {
  @override
  Widget build(BuildContext context) {
    return NavigationBar(
      destinations: [
        NavigationDestination(icon: Icon(Icons.home_work), label: 'home'),
        NavigationDestination(icon: Icon(Icons.person), label: 'profile'),
        NavigationDestination(
          icon: Icon(Icons.favorite_border),
          label: 'favorite',
        ),
        NavigationDestination(
          icon: Icon(Icons.settings_outlined),
          label: 'settings',
        ),
      ],
    );
  }
}
