import 'package:flutter/material.dart';

class PopUpMenu extends StatelessWidget {
  // const PopUpMenu({ Key? key }) : super(key: key);
  PopUpMenu({required this.message});
  final String message;
  @override
  Widget build(BuildContext context) {
    return new AlertDialog(
      title: const Text('Popup example'),
      content: new Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Text(message),
        ],
      ),
      actions: <Widget>[
        new TextButton(
          onPressed: () {
            Navigator.of(context).pop();
          },
          // textColor: Theme.of(context).primaryColor,
          child: const Text('Close'),
        ),
      ],
    );
  }
}
