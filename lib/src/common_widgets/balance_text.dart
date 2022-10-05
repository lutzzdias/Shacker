import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl/intl.dart';

class BalanceText extends StatelessWidget {
  final double balance;

  final String symbol;
  final int symbolSize;
  final Color symbolColor;

  final int dollarSize;
  final Color dollarColor;

  final int centSize;
  final Color centColor;

  const BalanceText({
    Key? key,
    required this.balance,
    this.symbol = 'R\$',
    this.symbolSize = 40,
    Color? symbolColor,
    this.dollarSize = 70,
    Color? dollarColor,
    this.centSize = 40,
    Color? centColor,
  })  : symbolColor = symbolColor ?? const Color(0xFF9999A1),
        dollarColor = dollarColor ?? const Color(0xFF000000),
        centColor = centColor ?? const Color(0xFF000000),
        super(key: key);

  @override
  Widget build(BuildContext context) {
    final dollars = balance.floor().toString();
    final cents = NumberFormat(".00").format(balance % 1);

    return RichText(
      text: TextSpan(
        children: <TextSpan>[
          TextSpan(
            text: symbol,
            style: GoogleFonts.anonymousPro(
              color: symbolColor,
              fontSize: symbolSize.toDouble(),
            ),
          ),
          TextSpan(
            text: dollars,
            style: GoogleFonts.anonymousPro(
              color: dollarColor,
              fontSize: dollarSize.toDouble(),
            ),
          ),
          TextSpan(
            text: cents,
            style: GoogleFonts.anonymousPro(
              color: centColor,
              fontSize: centSize.toDouble(),
            ),
          ),
        ],
      ),
    );
  }
}
