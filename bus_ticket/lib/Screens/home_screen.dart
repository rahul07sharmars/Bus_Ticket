import 'package:flutter/material.dart';
import 'package:bus_ticket/constant.dart';
import 'package:bus_ticket/rounded_button.dart';
import 'package:bus_ticket/main.dart';
import 'screen1.dart';
import 'screen2.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);
  static String id = 'homescreen';
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: Text("Ticket Booking"),
        ),
        body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            SizedBox(
              height: 50,
            ),
            Text("To book seat, update/Edit, clik below",
                style: klabelTextStyle),
            RoundedButton(
              enable: true,
              name: "Screen1",
              color: Colors.blueAccent,
              onPressed: () {
                Navigator.pushNamed(context, Screen1.id);
              },
            ),
            SizedBox(
              height: 16,
            ),
            Text("To see list of booking and passenger, click below",
                style: klabelTextStyle),
            RoundedButton(
                name: "Screen2",
                color: Colors.blueAccent,
                onPressed: () {
                  Navigator.pushNamed(context, Screen2.id);
                },
                enable: true),
          ],
        ),
      ),
    );
  }
}
