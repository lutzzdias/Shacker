import 'package:flutter/material.dart';
import 'package:shacker/src/constants/custom_themes.dart';
import 'package:shacker/src/presentation/home_screen.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Shacker',
      theme: CustomThemes.lightTheme,
      home: const HomeScreen(),
    );
  }
}
