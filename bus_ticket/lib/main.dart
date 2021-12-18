import 'package:bus_ticket/Screens/booking_screen.dart';
import 'package:bus_ticket/Screens/home_Screen.dart';
import 'package:bus_ticket/rounded_button.dart';
import 'package:flutter/material.dart';
import 'Screens/screen1.dart';
import 'Screens/screen2.dart';
import 'package:bus_ticket/constant.dart';

void main() {
  runApp(const BusTicket());
}

class BusTicket extends StatelessWidget {
  const BusTicket({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        
        
      ),
      initialRoute: HomeScreen.id,
      routes: {
        HomeScreen.id: (context) => HomeScreen(),
        Screen1.id: (context) => Screen1(),
        Screen2.id: (context) => Screen2(),
        BookingScreen.id:(context) =>BookingScreen(),
        }
    );
  }
}



// AppBar(
//           title: Text("Bus Tickets", style: TextStyle(color: Color(0XffFFBC61)),),
//           backgroundColor: Colors.orange[50],
//         ),
//       ),
//       theme: ThemeData.light().copyWith(
//         textTheme: TextTheme(
//           bodyText1: TextStyle(
//             color: Color(0xFFFBE9BA),
//           ),
//         ),
//       ),
//       initialRoute: HomeScreen.id,
//       routes: {
//         HomeScreen.id: (context) => HomeScreen(),
//         Screen1.id: (context) => Screen1(),
//         Screen2.id: (context) => Screen2(),