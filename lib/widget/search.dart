import 'package:flutter/material.dart';

// ignore: must_be_immutable
class SearchPage extends StatelessWidget {
  String city;
  String cho;
  String data;
  String num;
  String room;
  SearchPage(
      {super.key,
      required this.city,
      required this.cho,
      required this.data,
      required this.num,
      required this.room});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 20, horizontal: 10),
      decoration: BoxDecoration(
          color: Colors.grey[200], borderRadius: BorderRadius.circular(12)),
      width: MediaQuery.of(context).size.width,
      height: 150,
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                padding: EdgeInsets.only(left: 15),
                width: 240,
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(33),
                    boxShadow: [
                      BoxShadow(
                          offset: Offset(0, 2),
                          blurRadius: 3,
                          color: Colors.black54)
                    ]),
                child: TextFormField(
                  decoration: InputDecoration(
                      border: InputBorder.none,
                      hintText: city,
                      hintStyle:
                          TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
                ),
              ),
              Container(
                padding: EdgeInsets.all(13),
                decoration: BoxDecoration(
                    color: Color.fromARGB(255, 140, 182, 175),
                    borderRadius: BorderRadius.circular(55)),
                child: Icon(
                  Icons.search,
                  color: Colors.white,
                ),
              ),
            ],
          ),
          SizedBox(
            height: 13,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    cho,
                    style: TextStyle(fontSize: 13, color: Colors.black45),
                  ),
                  SizedBox(
                    height: 12,
                  ),
                  Text(
                    data,
                    style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                  )
                ],
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    num,
                    style: TextStyle(fontSize: 12, color: Colors.black45),
                  ),
                  SizedBox(
                    height: 12,
                  ),
                  Text(
                    room,
                    style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                  )
                ],
              ),
            ],
          )
        ],
      ),
    );
  }
}
