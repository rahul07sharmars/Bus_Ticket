import 'package:flutter/material.dart';

class SeatRow extends StatelessWidget {
  SeatRow({required this.label});

  final int label;
  int id=0;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(label.toString()),
        IconButton(
          onPressed: () {
            id = label;
          },          
          icon: Icon(Icons.stop_outlined),
        ),
        IconButton(
          onPressed: () {
            id = label+1;
          },
          icon: Icon(Icons.stop_outlined),
        ),
        SizedBox(
          width: 30,
        ),
        IconButton(
          onPressed: () {
            id = label + 2;
          },
          icon: Icon(Icons.stop_outlined),
        ),
        IconButton(
          onPressed: () {
            id = label + 1;
          },
          icon: Icon(Icons.stop_outlined),
        ),
      ],
    );
  }
}
