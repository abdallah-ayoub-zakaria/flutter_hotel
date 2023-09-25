import 'package:flutter/material.dart';

// ignore: must_be_immutable
class Filters extends StatelessWidget {
  String name;
  String fil;
  Filters({super.key, required this.name, required this.fil});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 10, bottom: 5),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            name,
            style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
          ),
          Row(
            children: [
              Text(
                fil,
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
              ),
              SizedBox(
                width: 5,
              ),
              Icon(Icons.menu_sharp)
            ],
          )
        ],
      ),
    );
  }
}
