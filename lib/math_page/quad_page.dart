import 'package:flutter/material.dart';

import '../math_Input.dart';
import 'dart:math';

class QuadraticPage extends StatefulWidget {
  const QuadraticPage({super.key});

  @override
  State<QuadraticPage> createState() =>
      _QuadraticPageState();
}

class _QuadraticPageState extends State<QuadraticPage> {
  String theA = '';
  String theB = '';
  String theC = '';

  TextEditingController value = TextEditingController();
  TextEditingController value1 = TextEditingController();
  TextEditingController value2 = TextEditingController();

  theAValue() {
    return setState(() {
      theA = value.text;
    });
  }

  theBValue() {
    return setState(() {
      theB = value1.text;
    });
  }

  theCValue() {
    return setState(() {
      theC = value2.text;
      if (value != null) {
        return;
      } else {
        return;
      }
    });
  }

  getQuadButtonState() {
    try {
      if (theA.isEmpty || theB.isEmpty || theC.isEmpty) {
        return GestureDetector(
          onTap: () {
            return;
          },
          child: Container(
            width: double.infinity,
            height: 56.0,
            decoration: const BoxDecoration(
              shape: BoxShape.rectangle,
              color: Color(0xff858585),
            ),
            child: const Center(
              child: Text(
                'calculate',
                style: TextStyle(
                  color: Color(0x6fc7c7c7),
                  fontSize: 20,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ),
          ),
        );
      } else {
        return GestureDetector(
          onTap: () {
            setState(() {
              calc = true;
            });
          },
          child: Container(
            width: double.infinity,
            height: 56.0,
            decoration: const BoxDecoration(
              shape: BoxShape.rectangle,
              color: Color(0xffaaff0e),
            ),
            child: const Center(
              child: Text(
                'calculate',
                style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.w600),
              ),
            ),
          ),
        );
      }
    } catch (e) {
      print(e);
      return;
    }
  }

  bool calc = false;

  void clearValues() {
    setState(() {
      value.clear();
      value1.clear();
      value2.clear();
      theA = '';
      theB = '';
      theC = '';
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Center(
          child: Text('Math app'),
        ),
      ),
      body: SingleChildScrollView(
        child: Container(
          padding: const EdgeInsets.all(16.0),
          child: Column(children: <Widget>[
            Column(
              children: [
                Row(
                  children: [
                    MathInput(
                      value: value,
                      getValue: () {
                        theAValue();
                      },
                    ),
                    const Text(
                      'x²',
                      style: TextStyle(
                          fontWeight: FontWeight.w700,
                          fontSize: 36),
                    ),
                    const SizedBox(
                      width: 16,
                    ),
                    const Text(
                      '+',
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 36),
                    ),
                    const SizedBox(
                      width: 16,
                    ),
                    MathInput(
                      value: value1,
                      getValue: () {
                        theBValue();
                      },
                    ),
                    const Text(
                      'x',
                      style: TextStyle(
                          fontWeight: FontWeight.w700,
                          fontSize: 36),
                    ),
                    const SizedBox(
                      width: 16,
                    ),
                    const Text(
                      '+',
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 36),
                    ),
                    const SizedBox(
                      width: 12,
                    ),
                    MathInput(
                      value: value2,
                      getValue: () {
                        theCValue();
                      },
                    ),
                    const SizedBox(
                      width: 16,
                    ),
                    const Text(
                      '=',
                      style: TextStyle(
                          fontWeight: FontWeight.w700,
                          fontSize: 36),
                    ),
                    const SizedBox(
                      width: 16,
                    ),
                    const Text(
                      '0',
                      style: TextStyle(
                          fontWeight: FontWeight.w700,
                          fontSize: 36),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 24,
                ),
              ],
            ),
            const SizedBox(
              height: 48,
            ),
            Column(
              children: [
                Row(
                  children: [
                    Text(
                      theA,
                      style: const TextStyle(
                          fontWeight: FontWeight.w700,
                          fontSize: 36),
                    ),
                    const Text(
                      'x',
                      style: TextStyle(
                          fontWeight: FontWeight.w700,
                          fontSize: 36),
                    ),
                    const SizedBox(
                      width: 24,
                    ),
                    const Text(
                      '+',
                      style: TextStyle(
                          fontWeight: FontWeight.w700,
                          fontSize: 36),
                    ),
                    const SizedBox(
                      width: 24,
                    ),
                    Text(
                      theB,
                      style: const TextStyle(
                          fontWeight: FontWeight.w700,
                          fontSize: 36),
                    ),
                    const Text(
                      'x',
                      style: TextStyle(
                          fontWeight: FontWeight.w700,
                          fontSize: 36),
                    ),
                    const SizedBox(
                      width: 24,
                    ),
                    const Text(
                      '+',
                      style: TextStyle(
                          fontWeight: FontWeight.w700,
                          fontSize: 36),
                    ),
                    const SizedBox(
                      width: 24,
                    ),
                    Text(
                      theC,
                      style: const TextStyle(
                          fontWeight: FontWeight.w700,
                          fontSize: 36),
                    ),
                    const SizedBox(
                      width: 24,
                    ),
                    const Text(
                      '=',
                      style: TextStyle(
                          fontWeight: FontWeight.w700,
                          fontSize: 36),
                    ),
                    const SizedBox(
                      width: 24,
                    ),
                    const Text(
                      '0',
                      style: TextStyle(
                          fontWeight: FontWeight.w700,
                          fontSize: 36),
                    ),
                  ],
                ),
                calc == true
                    ? Text(
                        'X  =  ${GetQuadAnswer(
                          a: converter(theA),
                          b: converter(theB),
                          c: converter(theC),
                        ).firstX()?.toStringAsFixed(2)}',
                        style: const TextStyle(
                            fontSize: 36,
                            fontWeight: FontWeight.w600),
                      )
                    : const Text(
                        'X = ',
                        style: TextStyle(
                            fontSize: 36,
                            fontWeight: FontWeight.w600),
                      ),
                const Text(
                  'or',
                  style: TextStyle(
                      fontWeight: FontWeight.w700,
                      fontSize: 36),
                ),
                calc == true
                    ? Text(
                        'X  =  ${GetQuadAnswer(
                          a: converter(theA),
                          b: converter(theB),
                          c: converter(theC),
                        ).secondX().toString()}',
                        style: const TextStyle(
                            fontSize: 36,
                            fontWeight: FontWeight.w600),
                      )
                    : const Text(
                        'X = ',
                        style: TextStyle(
                            fontSize: 36,
                            fontWeight: FontWeight.w600),
                      ),
              ],
            ),
            GestureDetector(
              onTap: () {
                clearValues();
              },
              child: Container(
                width: double.infinity,
                height: 56.0,
                decoration: const BoxDecoration(
                  shape: BoxShape.rectangle,
                  color: Colors.red,
                ),
                child: const Center(
                  child: Text(
                    'clear',
                    style: TextStyle(
                      color: Color(0xff000000),
                      fontSize: 20,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 16,
            ),
            getQuadButtonState()
          ]),
        ),
      ),
    );
  }

  num? converter(String number) {
    if (number.isEmpty) {
      return null;
    }

    if (decimalValue(number)) {
      double? float = double.tryParse(number);
      return float;
    } else {
      int? float = int.tryParse(number);
      return float;
    }
  }

  bool decimalValue(String number) {
    if (number.contains('.')) {
      return true;
    } else {
      return false;
    }
  }
}

class GetQuadAnswer {
  final num? a;
  final num? b;
  final num? c;

  GetQuadAnswer({
    this.a,
    this.b,
    this.c,
  });

  num? firstX() {
    if (a == null || b == null || c == null) {
      return null;
    }

    num discriminant = pow(b!, 2) - 4 * a! * c!;

    if (discriminant < 0) {
      return null;
    }

    return ((-b!) + sqrt(discriminant)) / (2 * a!);
  }

  num? secondX() {
    if (a == null || b == null || c == null) {
      return null;
    }

    num discriminant = pow(b!, 2) - 4 * a! * c!;

    if (discriminant < 0) {
      return null;
    }

    return ((-b!) - sqrt(discriminant)) / (2 * a!);
  }
}
