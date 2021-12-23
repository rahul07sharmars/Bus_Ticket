import 'package:flutter/material.dart';
import 'package:bus_ticket/rounded_button.dart';
import 'package:bus_ticket/constant.dart';
import 'package:bus_ticket/Data/userdatatype.dart';
import 'package:bus_ticket/Data/userdetail.dart';
import 'booking_screen.dart';

class Screen2 extends StatelessWidget {
  const Screen2({Key? key}) : super(key: key);
  static String id = "screen2";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Ticket Booking"),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          RoundedButton(
              name: "Bookings",
              color: Colors.blueAccent,
              onPressed: () {
                // BookingScreen
              },
              enable: true),
          RoundedButton(
              name: "Tracking",
              color: Colors.blueAccent,
              onPressed: () {},
              enable: true),
        ],
      ),
    );
  }
}
