import 'package:flutter/material.dart';

import '../common_widgets/main_app_bar.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: MainAppBar(
          leadingIcon: IconButton(
            icon: const Icon(Icons.search),
            onPressed: () => null,
          ),
          trailingIcon: IconButton(
            icon: const Icon(
              Icons.add,
            ),
            onPressed: () => null,
          ),
        ),
      ),
    );
  }
}
