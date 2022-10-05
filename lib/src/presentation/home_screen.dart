import 'package:flutter/material.dart';
import 'package:shacker/src/constants/app_sizes.dart';

import '../common_widgets/balance_text.dart';
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
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            gapH48,
            const BalanceText(
              balance: 753.02,
            ),
            gapH48,
            Expanded(child: ListView())
          ],
        ),
      ),
    );
  }
}
