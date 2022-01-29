import 'dart:ui';

import 'package:flutter/material.dart';

class CardTable extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Table(
      children: [
        TableRow(children: [
          _SingleCard(
            color: Colors.blue,
            icon: Icons.border_all,
            text: 'General',
          ),
          _SingleCard(
            color: Colors.pinkAccent,
            icon: Icons.car_rental,
            text: 'Transport',
          )
        ]),
        TableRow(children: [
          _SingleCard(
            color: Colors.green,
            icon: Icons.account_circle,
            text: 'Contacts',
          ),
          _SingleCard(
            color: Colors.purple,
            icon: Icons.food_bank,
            text: 'Food',
          )
        ]),
        TableRow(children: [
          _SingleCard(
            color: Colors.red,
            icon: Icons.file_copy_sharp,
            text: 'Files',
          ),
          _SingleCard(
            color: Colors.lightBlue,
            icon: Icons.usb_outlined,
            text: 'Usb',
          )
        ]),
        TableRow(children: [
          _SingleCard(
            color: Colors.greenAccent,
            icon: Icons.mouse,
            text: 'Mouse',
          ),
          _SingleCard(
            color: Colors.redAccent,
            icon: Icons.keyboard,
            text: 'Keyboard',
          )
        ]),
      ],
    );
  }
}

class _SingleCard extends StatelessWidget {
  final IconData icon;
  final Color color;
  final String text;

  const _SingleCard(
      {Key? key, required this.icon, required this.color, required this.text})
      : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(15),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(20),
        child: BackdropFilter(
          filter: ImageFilter.blur(sigmaX: 5, sigmaY: 5),
          child: Container(
            height: 180,
            decoration: BoxDecoration(
                color: Color.fromRGBO(62, 66, 107, 0.7),
                borderRadius: BorderRadius.circular(20)),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                CircleAvatar(
                  backgroundColor: this.color,
                  child: Icon(
                    this.icon,
                    size: 35,
                    color: Colors.white,
                  ),
                  radius: 30,
                ),
                SizedBox(height: 10),
                Text(
                  this.text,
                  style: TextStyle(color: Colors.blue, fontSize: 18),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
