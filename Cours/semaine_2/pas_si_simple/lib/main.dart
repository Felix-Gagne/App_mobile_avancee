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
      title: 'Pas si simple',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'Pas si simple'),
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
      body: Column(
        children: [

          Container(
            height: 200,
            child: Row(
              children:
              [
                Expanded(
                  flex: 2,
                    child: Container(
                      color: Colors.red,
                    )
                ),
                Expanded(
                    flex: 1,
                    child: Column(
                      children: [
                        Expanded(child: Row(
                          children: [
                            Text("YO"),
                            Spacer()
                          ],
                        ),
                        ),
                        Expanded(
                          child: Row(
                            children: [
                              Expanded(child: Container()),
                              Expanded(child: Container(
                                color: Colors.black,
                              ),)
                            ],
                          ),
                        )
                      ],
                    )
                ),
              ],
            )
          ),



          Spacer(),

          ElevatedButton(
              onPressed: () {},
              child: Text("Ceci est un bouton")
          )
        ],
      )
    );
  }
}
