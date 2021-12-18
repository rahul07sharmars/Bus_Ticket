import 'package:flutter/material.dart';

class SeatSelectionButton extends StatelessWidget {
  SeatSelectionButton(
      {required this.icon, required this.onPressed, required this.enable});
  final Icon icon;
  final Function onPressed;
  final bool enable;
  Color color = Colors.black;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: IconButton(
          onPressed: () {
            // color = Colors.blue[600];
          },
          icon: icon),
    );
  }
}
