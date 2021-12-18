import 'package:flutter/material.dart';

final String title = "Welcome";
double headerSize = 48.0;
double button_text_size = 32.0;
double padding_home_screen = 24.0;

const Color button_color = Color(0XffFFBC61);
const klabelTextStyle = TextStyle(
  fontSize: 25,
  fontWeight: FontWeight.w300,
  color: Colors.black87,
);


const kTextFieldDecoration = InputDecoration(
  hintStyle: TextStyle(color: Colors.grey),
  //hintText: 'Enter your password',
  contentPadding: EdgeInsets.symmetric(vertical: 10.0, horizontal: 20.0),
  border: OutlineInputBorder(
    borderRadius: BorderRadius.all(
      Radius.circular(32.0),
    ),
  ),
  enabledBorder: OutlineInputBorder(
      borderSide: BorderSide(color: Colors.lightBlue, width: 2.0),
      borderRadius: BorderRadius.all(Radius.circular(32.0))),
  focusedBorder: OutlineInputBorder(
    borderSide: BorderSide(color: Colors.lightBlue, width: 4),
    borderRadius: BorderRadius.all(
      Radius.circular(32.0),
    ),
  ),
);

const kheaderTextStyle = TextStyle(
  fontSize: 35,
  fontWeight: FontWeight.w800,
  color: Color(0xffB38b6d),
);
