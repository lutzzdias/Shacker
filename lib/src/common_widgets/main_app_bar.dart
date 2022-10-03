import 'package:flutter/material.dart';

class MainAppBar extends StatelessWidget with PreferredSizeWidget {
  final IconButton leadingIcon;
  final IconButton trailingIcon;
  const MainAppBar(
      {super.key, required this.leadingIcon, required this.trailingIcon});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      leading: leadingIcon,
      title: Text(
        '${DateTime.now().day}/${DateTime.now().month}/${DateTime.now().year}',
      ),
      actions: [
        trailingIcon,
      ],
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(60.0);
}
