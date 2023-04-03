import 'package:flutter/material.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      // This call to setState tells the Flutter framework that something has
      // changed in this State, which causes it to rerun the build method below
      // so that the display can reflect the updated values. If we changed
      // _counter without calling setState(), then the build method would not be
      // called again, and so nothing would appear to happen.
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
          margin: EdgeInsets.only(left: 25, top: 50),
          child: SingleChildScrollView(
            child: Column(
              children: [
                ...List.generate(
                  10,
                  (index) => Row(
                    children: [
                      Container(
                        width: 50,
                        child: Stack(
                          children: [
                            Container(
                              margin: EdgeInsets.only(left: 15),
                              height: 180,
                              width: 1.5,
                              color: Color.fromARGB(255, 255, 187, 206),
                            ),
                            Stack(
                              alignment: Alignment.center,
                              children: [
                                Container(
                                  height: 30,
                                  width: 30,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(30),
                                    color: Color.fromARGB(255, 250, 208, 220),
                                  ),
                                ),
                                Container(
                                  height: 10,
                                  width: 10,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(30),
                                    color: Color.fromARGB(255, 253, 174, 197),
                                  ),
                                )
                              ],
                            )
                          ],
                        ),
                      ),
                      Expanded(
                          child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            '10:00 - 10:45',
                            style:
                                TextStyle(fontSize: 22, color: Colors.black54),
                          ),
                          SizedBox(
                            height: 25,
                          ),
                          Container(
                            width: double.infinity,
                            margin: EdgeInsets.only(right: 25, bottom: 25),
                            child: Container(
                              padding: EdgeInsets.symmetric(
                                  horizontal: 25, vertical: 16),
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(30),
                                color: Color.fromARGB(255, 251, 200, 214),
                              ),
                              child: Row(
                                children: [
                                  Container(
                                    padding: EdgeInsets.symmetric(vertical: 12),
                                    width: 65,
                                    height: 65,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(20),
                                      color: Color.fromARGB(255, 255, 187, 206),
                                    ),
                                    child: Image(
                                        image: NetworkImage(
                                            'https://pngimg.com/d/book_PNG51090.png')),
                                  ),
                                  SizedBox(
                                    width: 25,
                                  ),
                                  Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        'Physics',
                                        style: TextStyle(
                                            fontSize: 22,
                                            fontWeight: FontWeight.bold),
                                      ),
                                      Row(
                                        children: [
                                          Icon(
                                            Icons.alarm,
                                            size: 20,
                                            color: Colors.black45,
                                          ),
                                          Text(
                                            ' 2 days left',
                                            style: TextStyle(
                                              letterSpacing: 0.6,
                                              color: Colors.black45,
                                            ),
                                          ),
                                        ],
                                      )
                                    ],
                                  ),
                                ],
                              ),
                            ),
                          )
                        ],
                      ))
                    ],
                  ),
                )
              ],
            ),
          )),
    );
  }
}
