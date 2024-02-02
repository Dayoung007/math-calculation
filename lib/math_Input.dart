import 'package:flutter/material.dart';

class MathInput extends StatelessWidget {
  final TextEditingController value;
  final VoidCallback getValue;

  const MathInput(
      {Key? key,
      required this.value,
      required this.getValue})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 56.0, // Adjust the width as needed
      child: TextField(
        maxLength: 2,
        keyboardType: TextInputType.number,
        controller: value,
        onChanged: (String value) {
          getValue();
        },
        onSubmitted: (String value) {
          getValue();
        },
        style: const TextStyle(
          fontWeight: FontWeight.w600,
          fontSize: 16.0,
          height: 1.0,
        ),
        decoration: const InputDecoration(
          filled: true,
          fillColor: Colors.white,
          hintText: 'i.e 2',
          border: OutlineInputBorder(
            borderRadius: BorderRadius.all(
              Radius.circular(16.0),
            ),
            borderSide: BorderSide.none,
          ),
        ),
      ),
    );
  }
}
