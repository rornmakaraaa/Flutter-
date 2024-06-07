import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Center(
            child: Text(
              'Flutter Layout Demo',
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
          ),
        ),
        body: SingleChildScrollView(
          child: Column(
            children: [
              Image.network(
                'https://upload.wikimedia.org/wikipedia/commons/0/0d/Oeschinen_Lake%2C_Kandersteg%2C_Switzerland_%28Unsplash%29.jpg',
                width: double.infinity,
                height: 250.0,
                fit: BoxFit.cover,
              ),
              Padding(
                padding: const EdgeInsets.all(30.0),
                child: Row(
                  children: [
                    const Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Oeschinen Lake Campground',
                            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20.0),
                          ),
                          Text(
                            'Kandersteg, Switzerland',
                            style: TextStyle(fontSize:14.0),
                          ),
                        ],
                      ),
                    ),
                    Icon(
                      Icons.star,
                      color: Colors.red[500],
                    ),
                    const Text('41'),
                  ],
                ),
              ),
              Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Column(
                    children: [
                      IconButton(
                        icon: const Icon(Icons.phone, color: Colors.blue),
                        onPressed: () {
                          print('Phone');
                        },
                        padding: const EdgeInsets.only(right: 69.0),
                      ),
                      //const IntrinsicWidth(
                        //child: Text(
                          //'CALL',
                          //style: TextStyle(color: Colors.blue, fontSize:10, ),
                        //,
                      //),
                    ],
                  ),
                  Column(
                    children: [
                      IconButton(
                        icon: const Icon(Icons.room_outlined, color: Colors.blue),
                        onPressed: () {
                          print('Route_outlined');
                        },
                      ),
                      const IntrinsicWidth(
                        child: Text(
                          'ROUTE',
                          style: TextStyle(color: Colors.blue, fontSize: 10),
                          textAlign: TextAlign.center,
                        ),
                      ),
                    ],
                  ),
                  Column(
                    children: [
                      IconButton(
                        icon: const Icon(Icons.share, color: Colors.blue),
                        onPressed: () {
                          print('Sharing');
                        },
                        padding: const EdgeInsets.only(left: 69.0),
                      ),
                      //const IntrinsicWidth(
                        //child: Text(
                          //'SHARE',
                        //  style: TextStyle(color: Colors.blue, fontSize: 10,),
                        //),
                      //),
                    ],
                  ),
                ],
              ),
              const Padding(
                padding: EdgeInsets.only(left: 30.0),
                child: Text(
                  'Lake Oeschinen lies at the foot of the Bluemlisalp in the Bernese Alps.'
                      'Situated 1,578 meters above sea levels. it is one of the larger Alpine Lake. '
                      'A gondola ride from Kandersteg, followed by a half-hour walk through pastures '
                  'and pine forest, leads you to the lake, which warm to 20 degrees Celsuis in the summer. '
                    'Activities enjoyed here include rowing, and riding the summer toboggan run ',
                  style: TextStyle(fontSize: 10.0),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}