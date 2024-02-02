import 'package:flutter/material.dart';

import 'intro_page.dart';

class SecondScreen extends StatelessWidget {
  const SecondScreen({super.key});

  @override
  Widget build(BuildContext context) {
    // ScreenTwoArguments arguments = ModalRoute.of(context)!
    //     .settings
    //     .arguments as ScreenTwoArguments;

    return Scaffold(
      appBar: AppBar(
        title: const Center(
          child: Text('Math app'),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              padding: const EdgeInsets.all(16.0),
              child: Column(children: [
                GestureDetector(
                  onTap: () {
                    Navigator.pushNamed(context, '/third');
                  },
                  child: Container(
                    decoration: const BoxDecoration(
                      color: Color(0xff13dccb),
                    ),
                    height: 174.0,
                    width: double.infinity,
                    child: const Center(
                        child:
                            Text('Simultaneous Equation')),
                  ),
                )
              ]),
            ),
            Container(
              padding: const EdgeInsets.all(16.0),
              child: Column(children: [
                GestureDetector(
                  onTap: () {
                    Navigator.pushNamed(context, '/forth');
                  },
                  child: Container(
                    decoration: const BoxDecoration(
                      color: Color(0xffc2ad26),
                    ),
                    height: 174.0,
                    width: double.infinity,
                    child: const Center(
                        child: Text('Quadratic Equation')),
                  ),
                )
              ]),
            ),
          ],
        ),
      ),
    );
  }
}
