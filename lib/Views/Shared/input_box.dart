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

Widget inputFieldTitle(title) => Padding(
      padding: const EdgeInsets.only(bottom: 2.0),
      child: Text(title,
          style: TextStyle(
              fontSize: 14, color: kActiveColor, fontWeight: FontWeight.w500)),
    );

class InputFormField extends StatelessWidget {
  const InputFormField({
    this.suffixIcon,
    this.prefixIcon,
    this.validator,
    this.obscure = false,
    this.onChanged,
    this.enabled = true,
    this.controller,
    this.label,
    this.hint,
    this.textCapitalization = TextCapitalization.none,
    this.keyboardType,
    this.maxlength,
    this.maxLines,
    this.inputFormatters,
  });

  final suffixIcon;
  final prefixIcon;
  final onChanged;
  final validator;
  final enabled;
  final controller;
  final obscure;
  final label;
  final hint;
  final textCapitalization;
  final keyboardType;
  final maxlength;
  final maxLines;
  final inputFormatters;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(0, 7, 0, 12),
      child: TextFormField(
        inputFormatters: inputFormatters,
        buildCounter: (context,
                {required currentLength, required isFocused, maxLength}) =>
            null,
        enabled: enabled,
        maxLength: maxlength,
        maxLines: maxLines,
        controller: controller,
        keyboardType: keyboardType,
        style: TextStyle(fontSize: 15, color: BODY_COLOR),
        textCapitalization: textCapitalization,
        validator: validator,
        onChanged: onChanged,
        obscureText: obscure,
        decoration: InputDecoration(
          filled: true,
          fillColor: LIGHT_GREY,
          border: InputBorder.none,
          enabledBorder: OutlineInputBorder(
              borderSide: BorderSide(color: LIGHT_GREY, width: 1),
              borderRadius: BorderRadius.all(Radius.circular(50))),
          disabledBorder: OutlineInputBorder(
              borderSide: BorderSide(color: LIGHT_GREY, width: 1),
              borderRadius: BorderRadius.all(Radius.circular(5))),
          focusedBorder: OutlineInputBorder(
              borderSide:
                  BorderSide(color: kActiveColor.withOpacity(0.6), width: 1),
              borderRadius: BorderRadius.all(Radius.circular(5))),
          errorBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(5.0),
            borderSide: BorderSide(color: RED),
          ),
          focusedErrorBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(5.0),
            borderSide: BorderSide(color: kActiveColor),
          ),
          suffixIcon: suffixIcon,
          prefixIcon: prefixIcon,
          labelText: label,
          hintText: hint,
          labelStyle: TextStyle(fontSize: 13, color: GREY),
          hintStyle: TextStyle(fontSize: 13, color: GREY),
          contentPadding:
              EdgeInsets.symmetric(vertical: 15.0, horizontal: 25.0),
        ),
      ),
    );
  }
}
