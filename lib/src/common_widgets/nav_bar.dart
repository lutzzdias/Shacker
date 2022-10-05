import 'package:flutter/material.dart';

class NavBar extends StatelessWidget {
  const NavBar({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      items: const [
        BottomNavigationBarItem(
          icon: Icon(Icons.abc),
          label: 'home',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.access_time),
          label: 'stats',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.account_tree_outlined),
          label: 'config',
        ),
      ],
    );
  }
}
