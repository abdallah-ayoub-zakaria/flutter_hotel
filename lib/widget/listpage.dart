import 'package:flutter/material.dart';

class ListPage extends StatefulWidget {
  const ListPage({super.key});

  @override
  State<ListPage> createState() => _ListPageState();
}

class _ListPageState extends State<ListPage> {
  List page = [
    {
      'image': 'assets/hotel/hotel_1.png',
      'name': 'Grand Royal Hotel',
      'location': 'Wembley , London',
      'icons': Icon(Icons.location_on),
      'city': '2 km to city',
      'star': Icon(Icons.star),
      'rev': '80 Reviews',
      'price': '\$180',
      'per': '/per right'
    },
    {
      'image': 'assets/hotel/hotel_2.png',
      'name': 'Queen Hotel',
      'location': 'Wembley , London',
      'icons': Icon(Icons.location_on),
      'city': '2 km to city',
      'star': Icon(Icons.star),
      'rev': '80 Reviews',
      'price': '\$260',
      'per': '/per right'
    },
    {
      'image': 'assets/hotel/hotel_3.png',
      'name': 'Jadeh Hotel',
      'location': 'Wembley , London',
      'icons': Icon(Icons.location_on),
      'city': '2 km to city',
      'star': Icon(Icons.star),
      'rev': '80 Reviews',
      'price': '\$340',
      'per': '/per right'
    },
    {
      'image': 'assets/hotel/hotel_4.png',
      'name': 'Grands Hotel',
      'location': 'Wembley , London',
      'icons': Icon(Icons.location_on),
      'city': '2 km to city',
      'star': Icon(Icons.star),
      'rev': '80 Reviews',
      'price': '\$480',
      'per': '/per right'
    },
    {
      'image': 'assets/hotel/hotel_5.png',
      'name': 'Royal Hotel',
      'location': 'Wembley , London',
      'icons': Icon(Icons.location_on),
      'city': '2 km to city',
      'star': Icon(Icons.star),
      'rev': '80 Reviews',
      'price': '\$550',
      'per': '/per right'
    }
  ];
  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.height,
      child: ListView.builder(
          itemCount: page.length,
          itemBuilder: (context, index) {
            return Padding(
              padding: const EdgeInsets.symmetric(vertical: 15),
              child: Container(
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(13),
                    boxShadow: [
                      BoxShadow(
                          offset: Offset(0, 2),
                          blurRadius: 4,
                          color: Colors.black54)
                    ]),
                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.height / 3,
                child: Column(
                  children: [
                    Container(
                      width: MediaQuery.of(context).size.width,
                      height: MediaQuery.of(context).size.height / 5,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.only(
                              topRight: Radius.circular(13),
                              topLeft: Radius.circular(13)),
                          image: DecorationImage(
                              image: AssetImage('${page[index]['image']}'),
                              fit: BoxFit.cover)),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(
                          top: 10, right: 20, left: 20, bottom: 5),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                '${page[index]['name']}',
                                style: TextStyle(
                                    fontFamily: 'MyFont',
                                    fontSize: 22,
                                    fontWeight: FontWeight.bold),
                              ),
                              Row(
                                children: [
                                  Text(
                                    '${page[index]['location']}',
                                    style: TextStyle(color: Colors.black45),
                                  ),
                                  Icon(
                                    Icons.location_on_rounded,
                                    color: Color.fromARGB(255, 140, 182, 175),
                                  ),
                                  Text(
                                    '${page[index]['city']}',
                                    style: TextStyle(color: Colors.black45),
                                  ),
                                ],
                              ),
                              Row(
                                children: [
                                  Row(
                                    children: [
                                      Icon(
                                        Icons.star,
                                        color:
                                            Color.fromARGB(255, 140, 182, 175),
                                      ),
                                      Icon(
                                        Icons.star,
                                        color:
                                            Color.fromARGB(255, 140, 182, 175),
                                      ),
                                      Icon(
                                        Icons.star,
                                        color:
                                            Color.fromARGB(255, 140, 182, 175),
                                      ),
                                      Icon(
                                        Icons.star,
                                        color:
                                            Color.fromARGB(255, 140, 182, 175),
                                      ),
                                      Icon(
                                        Icons.star,
                                      ),
                                    ],
                                  ),
                                  SizedBox(
                                    width: 5,
                                  ),
                                  Text(
                                    '${page[index]['rev']}',
                                    style: TextStyle(color: Colors.black45),
                                  )
                                ],
                              )
                            ],
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                '${page[index]['price']}',
                                style: TextStyle(
                                    fontSize: 24,
                                    fontFamily: 'MyFont',
                                    fontWeight: FontWeight.bold),
                              ),
                              Text('${page[index]['per']}'),
                            ],
                          )
                        ],
                      ),
                    )
                  ],
                ),
              ),
            );
          }),
    );
  }
}
