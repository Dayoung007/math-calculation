import 'package:flutter/material.dart';
import 'package:math_app/page_folder/intro_page.dart';
import 'package:math_app/page_folder/mathPage.dart';

import 'math_page/quad_page.dart';
import 'math_page/sim_page.dart';

void main() => runApp(const MathApp());

class MathApp extends StatelessWidget {
  const MathApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: {
        // '/': (context) => const FirstScreen(),
        '/second': (context) => const SecondScreen(),
        '/third': (context) => const SimultaneousPage(),
        '/forth': (context) => const QuadraticPage(),
      },
      theme: ThemeData.light().copyWith(
        primaryColor: const Color(0xff0a0e21),
        scaffoldBackgroundColor: const Color(0xFF15CE94),
        textTheme: const TextTheme(
          bodyLarge: TextStyle(color: Color(0xFF171616)),
          bodyMedium: TextStyle(color: Color(0xFF282727)),
        ),
        appBarTheme: const AppBarTheme(
            color: Color(0xff14d79c),
            titleTextStyle: TextStyle(
                color: Color(0xFF171616),
                fontSize: 18,
                fontWeight: FontWeight.w500)),
      ),
      home: const IntroPage(),
    );
  }
}
