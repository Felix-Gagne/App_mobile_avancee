import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Plein de containers',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'Plein de containers'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(widget.title),
      ),
      body: ListView(
        children: [
            Container(
              height: 200,
              color: Colors.blue,
            ),
          Container(
            height: 200,
            color: Colors.red,
          ),

          Padding(
              padding: EdgeInsets.fromLTRB(50, 0, 0, 0),
            child: Container(
              height: 200,
              color: Colors.green,
            ),
          ),

          Padding(
            padding: EdgeInsets.fromLTRB(0, 0, 50, 0),
            child: Container(
              height: 200,
              color: Colors.yellow,
            ),
          ),

          Padding(
            padding: EdgeInsets.fromLTRB(0, 0, 0, 50),
            child: Container(
              height: 200,
              color: Colors.black,
            ),
          ),

          Container(
            height: 200,
            color: Colors.blueGrey,
          ),
          Container(
            height: 200,
            color: Colors.redAccent,
          ),
          Container(
            height: 200,
            color: Colors.greenAccent,
          ),
          Container(
            height: 200,
            color: Colors.yellowAccent,
          ),
          Container(
            height: 200,
          ),
        ],
      )
    );
  }
}
