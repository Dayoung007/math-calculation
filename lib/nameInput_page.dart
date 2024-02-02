import 'package:flutter/material.dart';

class HomeInputField extends StatelessWidget {
  final TextEditingController theUserName;
  final VoidCallback getUserName;

  const HomeInputField(
      {Key? key,
      required this.theUserName,
      required this.getUserName})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: theUserName,
      onChanged: (String value) {
        getUserName();
      },
      style: const TextStyle(
        fontWeight: FontWeight.w600,
        fontSize: 16.0,
        height: 1.0,
      ),
      decoration: const InputDecoration(
        filled: true,
        fillColor: Colors.white,
        hintText: 'Enter your name',
        border: OutlineInputBorder(
          borderRadius: BorderRadius.all(
            Radius.circular(34.0),
          ),
          borderSide: BorderSide.none,
        ),
      ),
    );
  }
}
