import 'package:flutter/material.dart';

TextField customTextField({
  TextEditingController controller,
  TextInputType inputType,
  String hintText,
}) {
  return TextField(
    controller: controller,
    keyboardType: inputType,
    decoration: InputDecoration(
      hintText: hintText,
      border: OutlineInputBorder(
          borderSide: BorderSide(color: Colors.blue, width: 2.0),
          borderRadius: BorderRadius.all(Radius.circular(10))),
      enabledBorder: OutlineInputBorder(
          borderSide: BorderSide(color: Colors.blue, width: 2.0),
          borderRadius: BorderRadius.all(Radius.circular(10))),
      disabledBorder: OutlineInputBorder(
          borderSide: BorderSide(color: Colors.blue, width: 2.0),
          borderRadius: BorderRadius.all(Radius.circular(10))),
      focusedBorder: OutlineInputBorder(
          borderSide: BorderSide(color: Colors.blue, width: 2.0),
          borderRadius: BorderRadius.all(Radius.circular(10))),
    ),
  );
}
