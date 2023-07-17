import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      title: '2048',
      home: MyHomePage(title: '2048 Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  @override
  Widget build(BuildContext context) {
    var tileSize = 80.0;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme
            .of(context)
            .colorScheme
            .inversePrimary,
        title: Text(widget.title),
      ),
      body: Column(
        children: <Widget>[
          Row(
            children: <Widget>[
              Container(
                margin:
                const EdgeInsets.symmetric(vertical: 20, horizontal: 20),
                width: 150,
                height: 150,
                decoration: BoxDecoration(
                  image: const DecorationImage(
                    image: AssetImage('lib/images/download.png'),
                    fit: BoxFit.cover,
                  ),
                  borderRadius: BorderRadius.circular(12),
                ),
              ),
              const Column(
                children: <Widget>[
                  Row(
                    children: [
                      Card(
                        color: Color.fromRGBO(185, 173, 160, 5),
                        child: SizedBox(
                          width: 100,
                          height: 75,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: <Widget>[
                              Text(
                                "SCORE",
                                textAlign: TextAlign.start,
                                style: TextStyle(
                                    fontSize: 25,
                                    fontFamily:
                                    String.fromEnvironment("clearSans"),
                                    fontWeight: FontWeight.bold,
                                    color: Color.fromRGBO(224, 214, 203, 5)),
                              ),
                              Text(
                                "1140",
                                textAlign: TextAlign.justify,
                                style: TextStyle(
                                    fontSize: 27,
                                    fontFamily:
                                    String.fromEnvironment("clearSans"),
                                    fontWeight: FontWeight.bold,
                                    color: Colors.white),
                              )
                            ],
                          ),
                        ),
                      ),
                      Card(
                        color: Color.fromRGBO(185, 173, 160, 5),
                        child: SizedBox(
                          width: 100,
                          height: 75,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: <Widget>[
                              Text(
                                "BEST",
                                textAlign: TextAlign.start,
                                style: TextStyle(
                                    fontSize: 25,
                                    fontFamily:
                                    String.fromEnvironment("clearSans"),
                                    fontWeight: FontWeight.bold,
                                    color: Color.fromRGBO(224, 214, 203, 5)),
                              ),
                              Text(
                                "78304",
                                textAlign: TextAlign.justify,
                                style: TextStyle(
                                    fontSize: 25,
                                    fontFamily:
                                    String.fromEnvironment("clearSans"),
                                    fontWeight: FontWeight.bold,
                                    color: Colors.white),
                              )
                            ],
                          ),
                        ),
                      )
                    ],
                  ),
                  Row(
                    children: [
                      Card(
                        color: Color.fromARGB(500, 250, 156, 101),
                        child: SizedBox(
                            width: 100,
                            height: 50,
                            child: ButtonBar(
                              alignment: MainAxisAlignment.center,
                              children: [
                                Text(
                                  "MENU",
                                  style: TextStyle(
                                    fontSize: 11,
                                    fontFamily:
                                    String.fromEnvironment("clearSans"),
                                    fontWeight: FontWeight.bold,
                                    color: Colors.white,
                                  ),
                                ),
                              ],
                            )),
                      ),
                      Card(
                        color: Color.fromARGB(500, 250, 156, 101),
                        child: SizedBox(
                            width: 100,
                            height: 50,
                            child: ButtonBar(
                              children: [
                                Text(
                                  "LEADERBOARD",
                                  textAlign: TextAlign.start,
                                  style: TextStyle(
                                    fontSize: 11,
                                    fontFamily:
                                    String.fromEnvironment("clearSans"),
                                    fontWeight: FontWeight.bold,
                                    color: Colors.white,
                                  ),
                                ),
                              ],
                            )),
                      ),
                    ],
                  )
                ],
              ),
            ],
          ),
          Container(
            margin: const EdgeInsets.symmetric(vertical: 20, horizontal: 20),
            alignment: Alignment.centerLeft,
            child: const Text(
              "Your next goal is to get to the 8192 tile!",
              style: TextStyle(
                fontSize: 18,
                fontFamily: String.fromEnvironment("clearSans"),
                fontWeight: FontWeight.bold,
                color: Color(0xFF7A766D),
              ),
            ),
          ),
          Container(
            margin: const EdgeInsets.symmetric(vertical: 10, horizontal: 10),
            width: 400,
            height: 400,
            child: Card(
              color: const Color(0xFFB7AD9F),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Card(
                        color: const Color(0xFFEBD162),
                        child: SizedBox(
                            height: tileSize,
                            width: tileSize,
                            child: const Align(
                              alignment: Alignment.center,
                              child: Text(
                                "256",
                                style:TextStyle(
                                    fontFamily: String.fromEnvironment("clearSans"),
                                    fontWeight: FontWeight.bold,
                                    fontSize: 30,
                                    color: Colors.white
                                ),
                              ),)
                        ),
                      ),
                      Card(

                        color: const Color(0xFFEFD87C),
                        child: SizedBox(
                            height: tileSize,
                            width: tileSize,
                            child: const Align(
                              alignment: Alignment.center,
                              child: Text(
                                "128",
                                style:TextStyle(
                                    fontFamily: String.fromEnvironment("clearSans"),
                                    fontWeight: FontWeight.bold,
                                    fontSize: 30,
                                    color: Colors.white
                                ),
                              ),)
                        ),
                      ),
                      Card(
                        color: const Color(0xFFDB6144),
                        child: SizedBox(
                            height: tileSize,
                            width: tileSize,
                            child: const Align(
                              alignment: Alignment.center,
                              child: Text(
                                "64",
                                style:TextStyle(
                                    fontFamily: String.fromEnvironment("clearSans"),
                                    fontWeight: FontWeight.bold,
                                    fontSize: 30,
                                    color: Colors.white
                                ),
                              ),)
                        ),
                      ),
                      Card(
                        color: const Color(0xFFE48266),
                        child: SizedBox(
                            height: tileSize,
                            width: tileSize,
                            child: const Align(
                              alignment: Alignment.center,
                              child: Text(
                                "32",
                                style:TextStyle(
                                    fontFamily: String.fromEnvironment("clearSans"),
                                    fontWeight: FontWeight.bold,
                                    fontSize: 30,
                                    color: Colors.white
                                ),
                              ),)
                        ),
                      )
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Card(
                        color: const Color(0xFFEDE4DB),
                        child: SizedBox(
                            height: tileSize,
                            width: tileSize,
                            child: const Align(
                              alignment: Alignment.center,
                              child: Text(
                                "2",
                                style:TextStyle(
                                    fontFamily: String.fromEnvironment("clearSans"),
                                    fontWeight: FontWeight.bold,
                                    fontSize: 30,
                                    color: Color(0xFF766E64)
                                ),
                              ),)
                        ),
                      ),
                      Card(
                        color: const Color(0xFFEAE1C9),
                        child: SizedBox(
                            height: tileSize,
                            width: tileSize,
                            child: const Align(
                              alignment: Alignment.center,
                              child: Text(
                                "4",
                                style:TextStyle(
                                    fontFamily: String.fromEnvironment("clearSans"),
                                    fontWeight: FontWeight.bold,
                                    fontSize: 30,
                                    color: Color(0xFF766E64)
                                ),
                              ),)
                        ),
                      ),
                      Card(
                        color: const Color(0xFFFA9C65),
                        child: SizedBox(
                            height: tileSize,
                            width: tileSize,
                            child: const Align(
                              alignment: Alignment.center,
                              child: Text(
                                "8",
                                style:TextStyle(
                                    fontFamily: String.fromEnvironment("clearSans"),
                                    fontWeight: FontWeight.bold,
                                    fontSize: 30,
                                    color: Colors.white
                                ),
                              ),)
                        ),
                      ),
                      Card(
                        color: const Color(0xFFDF905F),
                        child: SizedBox(
                            height: tileSize,
                            width: tileSize,
                            child: const Align(
                              alignment: Alignment.center,
                              child: Text(
                                "16",
                                style:TextStyle(
                                    fontFamily: String.fromEnvironment("clearSans"),
                                    fontWeight: FontWeight.bold,
                                    fontSize: 30,
                                    color: Colors.white
                                ),
                              ),)
                        ),
                      )
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Card(
                        color: const Color(0xFFC9C1B5),
                        child: SizedBox(
                          height: tileSize,
                          width: tileSize,
                        ),
                      ),
                      Card(
                        color: const Color(0xFFC9C1B5),
                        child: SizedBox(
                          height: tileSize,
                          width: tileSize,
                        ),
                      ),
                      Card(
                        color: const Color(0xFFC9C1B5),
                        child: SizedBox(
                          height: tileSize,
                          width: tileSize,
                        ),
                      ),
                      Card(
                        color: const Color(0xFFC9C1B5),
                        child: SizedBox(
                          height: tileSize,
                          width: tileSize,
                        ),
                      )
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Card(
                        color: const Color(0xFFC9C1B5),
                        child: SizedBox(
                          height: tileSize,
                          width: tileSize,
                        ),
                      ),
                      Card(
                        color: const Color(0xFFC9C1B5),
                        child: SizedBox(
                          height: tileSize,
                          width: tileSize,
                        ),
                      ),
                      Card(
                        color: const Color(0xFFC9C1B5),
                        child: SizedBox(
                          height: tileSize,
                          width: tileSize,
                        ),
                      ),
                      Card(
                        color: const Color(0xFFC9C1B5),
                        child: SizedBox(
                          height: tileSize,
                          width: tileSize,
                        ),
                      )
                    ],
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
