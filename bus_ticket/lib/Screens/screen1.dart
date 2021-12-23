import 'package:bus_ticket/Screens/booking_screen.dart';
import 'package:bus_ticket/rounded_button.dart';
import 'package:flutter/material.dart';
import 'package:bus_ticket/seatRow.dart';

class Screen1 extends StatelessWidget {
  // const Screen1({ Key? key }) : super(key: key);
  static String id = "screen1";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Ticket Booking"),
      ),
      body: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Expanded(
            flex: 1,
            child: ListView(
              children: [
                SizedBox(
                  height: 30,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    SizedBox(
                      width: 4,
                    ),
                    Text("1"),
                    Text("2"),
                    SizedBox(
                      width: 4,
                    ),
                    Text("3"),
                    Text("4"),
                    SizedBox(
                      width: 4,
                    ),
                  ],
                ),
                SeatRow(label: 1),
                SeatRow(
                  label: 5,
                ),
                SeatRow(
                  label: 9,
                ),
                SeatRow(
                  label: 13,
                ),
                SeatRow(
                  label: 17,
                ),
                SeatRow(
                  label: 21,
                ),
                SeatRow(
                  label: 25,
                ),
                SeatRow(
                  label: 29,
                ),
                SeatRow(
                  label: 33,
                ),
                SeatRow(
                  label: 37,
                ),
                SeatRow(
                  label: 41,
                ),
                SeatRow(
                  label: 45,
                ),
                SeatRow(
                  label: 49,
                ),
                SeatRow(
                  label: 53,
                ),
                SeatRow(
                  label: 57,
                ),
                // SeatRow(),
              ],
            ),
          ),
          Row(
            children: [
              Expanded(
                child: RoundedButton(
                    name: "Book",
                    color: Colors.blueAccent,
                    onPressed: () {
                      
                      Navigator.pushNamed(context, BookingScreen.id);
                    },
                    enable: true),
              ),
              Expanded(
                child: RoundedButton(
                    name: "Update",
                    color: Colors.blueAccent,
                    onPressed: () {},
                    enable: true),
              ),
            ],
          ),
        ],
      ),
    );
  }
}



// import 'package:flutter/material.dart';
// import 'package:bus_ticket/seatSelectionButton.dart';

// class Screen1 extends StatelessWidget {
//   // const Screen1({ Key? key }) : super(key: key);
//   static String id = "screen1";
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: SafeArea(
//         child: SeatArrangement(),
//       ),
//     );
//   }
// }

// class SeatArrangement extends StatefulWidget {
//   const SeatArrangement({
//     Key? key,
//   }) : super(key: key);

//   @override
//   State<SeatArrangement> createState() => _SeatArrangementState();
// }

// Icon icon = Icon(Icons.stop_outlined);

// class _SeatArrangementState extends State<SeatArrangement> {
//   @override
//   Widget build(BuildContext context) {
//     return ListView(
//       children: [
//         Expanded(
//           child: Row(
//             children: [
//               SeatSelectionButton(icon: icon, onPressed: (){}, enable: true),
//               IconButton(
//                 onPressed: () {},
//                 icon: icon,
//               ),
//               SizedBox(
//                 width: 30,
//               ),
//               IconButton(
//                 onPressed: () {},
//                 icon: icon,
//               ),
//               IconButton(
//                 onPressed: () {},
//                 icon: icon,
//               ),
//             ],
//           ),
//         )
//       ],
//     );
//   }
// }
