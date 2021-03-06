import 'package:flutter/material.dart';
import 'constant.dart';

class RoundedButton extends StatelessWidget {
  RoundedButton(
      {required this.name,
      required this.color,
      required this.onPressed,
      required this.enable});

  final String name;
  final Color color;
  final Function onPressed;
  final enable;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 16.0),
      child: Material(
        elevation: 5.0,
        color: color,
        borderRadius: BorderRadius.circular(30.0),
        child: MaterialButton(
          disabledColor: Colors.orange[50],
          disabledTextColor: Colors.blueGrey[400],
          onPressed: enable
              ? () {
                  onPressed();
                }
              : () {},
          height: 42.0,
          minWidth: 200.0,
          child: Text(
            name,
            style: TextStyle(fontSize: 25),
          ),
        ),
      ),
    );
  }
}

class Header extends StatelessWidget {
  Header({required this.name});
  final String name;
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(
        name,
        style: kheaderTextStyle.copyWith(fontSize: 55),
      ),
    );
  }
}
