import 'package:flutter/material.dart';

import '../math_Input.dart';

class SimultaneousPage extends StatefulWidget {
  const SimultaneousPage({super.key});

  @override
  State<SimultaneousPage> createState() =>
      _SimultaneousPageState();
}

class _SimultaneousPageState
    extends State<SimultaneousPage> {
  TextEditingController value = TextEditingController();
  TextEditingController value1 = TextEditingController();
  TextEditingController value2 = TextEditingController();
  TextEditingController value3 = TextEditingController();
  TextEditingController value4 = TextEditingController();
  TextEditingController value5 = TextEditingController();

  String x1 = '';
  String y1 = '';
  String c1 = '';
  String x2 = '';
  String y2 = '';
  String c2 = '';

  x1Value() {
    return setState(() {
      x1 = value.text;
    });
  }

  y1Value() {
    return setState(() {
      y1 = value1.text;
    });
  }

  c1Value() {
    return setState(() {
      c1 = value2.text;
    });
  }

  x2Value() {
    return setState(() {
      x2 = value3.text;
    });
  }

  y2Value() {
    return setState(() {
      y2 = value4.text;
    });
  }

  c2Value() {
    return setState(() {
      c2 = value5.text;
    });
  }

  getButtonState() {
    try {
      if (x1.isEmpty ||
          y1.isEmpty ||
          c1.isEmpty ||
          x2.isEmpty ||
          y2.isEmpty ||
          c2.isEmpty) {
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
      return;
    }
  }

  void clearValue() {
    setState(() {
      value.clear();
      value1.clear();
      value2.clear();
      value3.clear();
      value4.clear();
      value5.clear();
      x1 = '';
      y1 = '';
      c1 = '';
      x2 = '';
      y2 = '';
      c2 = '';
    });
  }

  bool calc = false;

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
                        x1Value();
                      },
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
                          fontWeight: FontWeight.bold,
                          fontSize: 36),
                    ),
                    const SizedBox(
                      width: 24,
                    ),
                    MathInput(
                      value: value1,
                      getValue: () {
                        y1Value();
                      },
                    ),
                    const Text(
                      'y',
                      style: TextStyle(
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
                    MathInput(
                      value: value2,
                      getValue: () {
                        c1Value();
                      },
                    ),
                  ],
                ),
                const SizedBox(
                  height: 24,
                ),
                Row(
                  children: [
                    MathInput(
                      value: value3,
                      getValue: () {
                        x2Value();
                      },
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
                    MathInput(
                      value: value4,
                      getValue: () {
                        y2Value();
                      },
                    ),
                    const Text(
                      'y',
                      style: TextStyle(
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
                    MathInput(
                      value: value5,
                      getValue: () {
                        c2Value();
                      },
                    ),
                  ],
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
                      x1,
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
                      y1,
                      style: const TextStyle(
                          fontWeight: FontWeight.w700,
                          fontSize: 36),
                    ),
                    const Text(
                      'y',
                      style: TextStyle(
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
                    Text(
                      c1,
                      style: const TextStyle(
                          fontWeight: FontWeight.w700,
                          fontSize: 36),
                    ),
                  ],
                ),
                Row(
                  children: [
                    Text(
                      x2,
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
                      y2,
                      style: const TextStyle(
                          fontWeight: FontWeight.w700,
                          fontSize: 36),
                    ),
                    const Text(
                      'y',
                      style: TextStyle(
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
                    Text(
                      c2,
                      style: const TextStyle(
                          fontWeight: FontWeight.w700,
                          fontSize: 36),
                    ),
                  ],
                )
              ],
            ),
            GestureDetector(
              onTap: () {
                setState(() {
                  value.text = '';
                  value1.text = '';
                  value2.text = '';
                  value3.text = '';
                  value4.text = '';
                  value5.text = '';
                });
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
            getButtonState()!,
            const SizedBox(
              height: 64,
            ),
            calc == true
                ? Text(
                    'X  =  ${GetAnswer(
                      a1: converter(x1)!,
                      b1: converter(y1)!,
                      c1: converter(c1)!,
                      a2: converter(x2)!,
                      b2: converter(y2)!,
                      c2: converter(c2)!,
                    ).simultaneousX()?.toStringAsFixed(2)}',
                    style: const TextStyle(
                        fontSize: 36,
                        fontWeight: FontWeight.w600),
                  )
                : const Text(
                    'X =',
                    style: TextStyle(
                        fontSize: 36,
                        fontWeight: FontWeight.w600),
                  ),
            const SizedBox(
              height: 24,
            ),
            calc == true
                ? Text(
                    'y  =  ${GetAnswer(
                      a1: converter(x1)!,
                      b1: converter(y1)!,
                      c1: converter(c1)!,
                      a2: converter(x2)!,
                      b2: converter(y2)!,
                      c2: converter(c2)!,
                    ).simultaneousY()?.toStringAsFixed(2)}',
                    style: const TextStyle(
                        fontSize: 36,
                        fontWeight: FontWeight.w600),
                  )
                : const Text(
                    'Y =',
                    style: TextStyle(
                        fontSize: 36,
                        fontWeight: FontWeight.w600),
                  ),
          ]),
        ),
      ),
    );
  }

  num? converter(String number) {
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

class GetAnswer {
  final num? a1;
  final num? b1;
  final num? c1;
  final num? a2;
  final num? b2;
  final num? c2;
  GetAnswer(
      {required this.a1,
      required this.b1,
      required this.c1,
      required this.a2,
      required this.b2,
      required this.c2});

  num? simultaneousX() {
    if (a1 == null ||
        b1 == null ||
        c1 == null ||
        a2 == null ||
        b2 == null ||
        c2 == null) {
      return null;
    }

    num denumenator = (((a1!) * (b2!)) - ((a2!) * (b1!)));

    return (((b2!) * (c1!)) - ((b1!) * (c2!))) /
        denumenator;
  }

  simultaneousY() {
    if (a1 == null ||
        b1 == null ||
        c1 == null ||
        a2 == null ||
        b2 == null ||
        c2 == null) {
      return null;
    }

    num denumenator = (((a1!) * (b2!)) - ((a2!) * (b1!)));

    return (((a1!) * (c2!)) - ((a2!) * (c1!))) /
        denumenator;
  }
}
