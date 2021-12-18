import 'package:flutter/material.dart';
import 'package:bus_ticket/constant.dart';
import 'package:flutter/services.dart';
import 'package:pattern_formatter/pattern_formatter.dart';
import 'package:bus_ticket/rounded_button.dart';
// import 'package:flutter_multi_formatter/flutter_multi_formatter.dart';

class BookingScreen extends StatefulWidget {
  static String id = "bookingscreen";
  @override
  State<BookingScreen> createState() => _BookingScreenState();
}

class _BookingScreenState extends State<BookingScreen> {
  // final String pattern = r'(^(?:[+0]9)?[0-9]{10,12}$)';
  // RegExp rexp = new RegExp(pattern);
  String name = "Enter your name";
  String mobileNumber = "9999999999";
  String date = "01/01/2022";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Ticket Booking"),
      ),
      body: Container(
        margin: EdgeInsets.symmetric(horizontal: 16),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            TextField(
              textAlign: TextAlign.center,
              style: TextStyle(color: Colors.black),
              decoration:
                  kTextFieldDecoration.copyWith(hintText: "Enter your name"),
              onChanged: (value) {
                name = value;
                print(name);
              },
            ),
            TextFormField(
              textAlign: TextAlign.center,
              style: TextStyle(color: Colors.black),
              keyboardType: TextInputType.number,
              inputFormatters: [
                // FilteringTextInputFormatter.digitsOnly,
                LengthLimitingTextInputFormatter(10),                
                // FilteringTextInputFormatter.allow(RegExp(r'(^(?:[0]9)?[0-9]{10,12}$)')),
                //  NumberInputFormatter();
                // FilteringTextInputFormatter.allow(RegExp(r'[0-9]')),
              ],              
              //  <TextInputFormatter>[
              //   FilteringTextInputFormatter.digitsOnly
              // ], // Only numbers can be entered
              decoration: kTextFieldDecoration.copyWith(
                  hintText: "Enter Mobile Number"),
              onChanged: (value) {
                mobileNumber = value;
                print(mobileNumber);
              },
              // validator:<String?>validateMobile(mobileNumber),
            ),
            TextField(
              textAlign: TextAlign.center,
              style: TextStyle(color: Colors.black),
              keyboardType: TextInputType.number,
              inputFormatters: [
                DateInputFormatter(),
              ],
              decoration:
                  kTextFieldDecoration.copyWith(hintText: "Date(dd/mm/yyyy)"),
              onChanged: (value) {
                date = value;
                print(date);
              },
            ),
            RoundedButton(
                name: "Book",
                color: Colors.blueAccent,
                onPressed: () {
                  Navigator.pushNamed(context, BookingScreen.id);
                },
                enable: true),
          ],
        ),
      ),
    );
  }
}

String? validateMobile(String value) {
// Indian Mobile number are of 10 digit only
  if (value.length != 10)
    return "Validate";
  else
    return null;
  
}