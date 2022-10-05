import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class BalanceText extends StatelessWidget {
  final double balance;
  final String symbol;

  const BalanceText({
    Key? key,
    required this.balance,
    this.symbol = 'R\$',
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // TODO: Improve the money handling logic
    final String balanceStr = balance.toString();
    final int indexOfSeparator = balanceStr.indexOf(RegExp(r'[.,]'));
    final String bills = balanceStr.substring(0, indexOfSeparator);
    final String coins = balanceStr.substring(indexOfSeparator);
    return RichText(
      text: TextSpan(
        children: <TextSpan>[
          TextSpan(
            text: symbol,
            style: GoogleFonts.anonymousPro(
              color: const Color(0xFF9999A1),
              fontSize: 40,
            ),
          ),
          TextSpan(
            text: bills,
            style: GoogleFonts.anonymousPro(
              color: const Color(0xFF000000),
              fontSize: 70,
            ),
          ),
          TextSpan(
            text: coins,
            style: GoogleFonts.anonymousPro(
              color: const Color(0xFF000000),
              fontSize: 40,
            ),
          ),
        ],
      ),
    );
  }
}
