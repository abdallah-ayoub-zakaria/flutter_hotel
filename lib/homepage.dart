import 'package:flutter/material.dart';
import 'package:flutter_application_2_ui_hotel/widget/filters.dart';
import 'package:flutter_application_2_ui_hotel/widget/listpage.dart';
import 'package:flutter_application_2_ui_hotel/widget/search.dart';

// ignore: must_be_immutable
class MyHomePage extends StatelessWidget {
  String names;
  MyHomePage({super.key, required this.names});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: IconButton(
            onPressed: () {},
            icon: Icon(
              Icons.arrow_back,
              color: Colors.black,
            )),
        title: Text(
          names,
          style: TextStyle(
              fontFamily: 'MyFont',
              color: Colors.black,
              fontSize: 22,
              fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
        actions: [
          IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.heart_broken_rounded,
                color: Colors.black,
                size: 22,
              )),
          IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.location_pin,
                color: Colors.black,
                size: 22,
              )),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.only(left: 25, right: 25, top: 25),
        child: Container(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height,
          child: ListView(
            children: [
              SearchPage(
                city: 'London',
                cho: 'Choose date',
                data: '12 Dec - 22 Dec',
                num: 'Number of Rooms',
                room: '1 Room - 2 Adults',
              ),
              Filters(
                name: '520 hotels found',
                fil: 'Filters',
              ),
              ListPage(),
            ],
          ),
        ),
      ),
    );
  }
}
