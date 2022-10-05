import 'package:flutter/material.dart';
import 'package:shacker/src/constants/app_sizes.dart';

import '../common_widgets/balance_text.dart';
import '../common_widgets/main_app_bar.dart';
import '../common_widgets/nav_bar.dart';
import '../common_widgets/operation_list.dart';

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
        body: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.start,
            children: const [
              gapH48,
              BalanceText(
                balance: 753.02,
              ),
              gapH48,
              OperationList(),
            ],
          ),
        ),
        bottomNavigationBar: const NavBar(),
      ),
    );
  }
}
