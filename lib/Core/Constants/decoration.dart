import 'package:flutter/material.dart';

const kTextfieldDecoration = InputDecoration(
  hintStyle: TextStyle(color: Colors.black),
  contentPadding: EdgeInsets.only(left: 10),
  border: OutlineInputBorder(
    borderRadius: BorderRadius.all(Radius.circular(10)),
  ),
  enabledBorder: OutlineInputBorder(
    borderSide: BorderSide(color: Color.fromARGB(255, 0, 0, 0), width: 1.0),
    borderRadius: BorderRadius.all(Radius.circular(10)),
  ),
  focusedBorder: OutlineInputBorder(
    borderSide: BorderSide(color: Color.fromARGB(255, 0, 0, 0), width: 1.0),
    borderRadius: BorderRadius.all(Radius.circular(10)),
  ),
  errorBorder: OutlineInputBorder(
    borderSide: BorderSide(color: Color.fromARGB(255, 255, 0, 0), width: 1.0),
    borderRadius: BorderRadius.all(Radius.circular(10)),
  ),
  focusedErrorBorder: OutlineInputBorder(
    borderSide: BorderSide(color: Color.fromARGB(255, 255, 0, 0), width: 1.0),
    borderRadius: BorderRadius.all(Radius.circular(10)),
  ),
);
