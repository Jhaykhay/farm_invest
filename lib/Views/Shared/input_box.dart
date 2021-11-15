import 'package:flutter/material.dart';

import '../../constants.dart';

Widget buildInputBox({
  required String title,
  TextEditingController? controller,
  int maxLines = 1,
  bool obscureText = false,
  TextInputType? keyboardType,
  String Function(String? value)? validator,
  void Function(String? value)? onSaved,
}) {
  return Column(
    mainAxisAlignment: MainAxisAlignment.start,
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      Text(
        title,
        style: const TextStyle(
          fontSize: 20,
          fontWeight: FontWeight.bold,
        ),
      ),
      const SizedBox(height: 3),
      TextFormField(
        controller: controller,
        maxLines: maxLines,
        decoration: InputDecoration(
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10),
            borderSide: BorderSide.none,
          ),
          filled: true,
          fillColor: kBoxFilledColor,
        ),
        obscureText: obscureText,
        keyboardType: keyboardType,
        onSaved: onSaved,
        validator: validator,
      ),
    ],
  );
}
