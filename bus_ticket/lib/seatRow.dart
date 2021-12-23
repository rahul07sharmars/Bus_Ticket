import 'package:flutter/material.dart';

class SeatRow extends StatelessWidget {
  SeatRow({required this.label});

  final int label;
  
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(label.toString()),
        IconButton(
          onPressed: () {},
          icon: Icon(Icons.stop_outlined),
        ),
        IconButton(
          onPressed: () {},
          icon: Icon(Icons.stop_outlined),
        ),
        SizedBox(
          width: 30,
        ),
        IconButton(
          onPressed: () {},
          icon: Icon(Icons.stop_outlined),
        ),
        IconButton(
          onPressed: () {},
          icon: Icon(Icons.stop_outlined),
        ),
      ],
    );
  }
}