import 'dart:math';

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
      title: 'Tape le lapin',
      theme: ThemeData(
        primarySwatch: Colors.purple,
      ),
      home: const MyHomePage(title: 'Tape le lapin :)'),
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
  int _indexLapin = Random().nextInt(9);

  int _pafs = 0;
  int _flops = 0;

  void gererBoutin(int numero){
    print("Boutton "+ numero.toString());
    if(this._indexLapin == numero)
    {
      this._pafs++;
      this._indexLapin = Random().nextInt(9);
    }
    else
    {
      this._flops++;
      this._indexLapin = Random().nextInt(9);
    }
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    var b0 = ElevatedButton(
      onPressed: () {
        gererBoutin(0);
      },
      child: Text(this._indexLapin == 0 ? 'Lapin' : 'Taupe',
        style: TextStyle(fontSize: 20)),
    );
    var b1 = ElevatedButton(
      onPressed: () {
        gererBoutin(1);
      },
      child: Text(this._indexLapin == 1 ? 'Lapin' : 'Taupe',
          style: TextStyle(fontSize: 20)),
    );
    var b2 = ElevatedButton(
      onPressed: () {
        gererBoutin(2);
      },
      child: Text(this._indexLapin == 2 ? 'Lapin' : 'Taupe',
          style: TextStyle(fontSize: 20)),
    );
    var b3 = ElevatedButton(
      onPressed: () {
        gererBoutin(3);
      },
      child: Text(this._indexLapin == 3 ? 'Lapin' : 'Taupe',
          style: TextStyle(fontSize: 20)),
    );
    var b4 = ElevatedButton(
      onPressed: () {
        gererBoutin(4);
      },
      child: Text(this._indexLapin == 4 ? 'Lapin' : 'Taupe',
          style: TextStyle(fontSize: 20)),
    );
    var b5 = ElevatedButton(
      onPressed: () {
        gererBoutin(5);
      },
      child: Text(this._indexLapin == 5 ? 'Lapin' : 'Taupe',
          style: TextStyle(fontSize: 20)),
    );
    var b6 = ElevatedButton(
      onPressed: () {
        gererBoutin(6);
      },
      child: Text(this._indexLapin == 6 ? 'Lapin' : 'Taupe',
          style: TextStyle(fontSize: 20)),
    );
    var b7 = ElevatedButton(
      onPressed: () {
        gererBoutin(7);
      },
      child: Text(this._indexLapin == 7 ? 'Lapin' : 'Taupe',
          style: TextStyle(fontSize: 20)),
    );
    var b8 = ElevatedButton(
      onPressed: () {
        gererBoutin(8);
      },
      child: Text(this._indexLapin == 8 ? 'Lapin' : 'Taupe',
          style: TextStyle(fontSize: 20)),
    );

    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Text(
                    "Pafs : " + this._pafs.toString(),
                    style: TextStyle(color: Colors.green, fontSize: 30)
                ),
                Text(
                    "Flops : " + this._flops.toString(),
                  style: TextStyle(color: Colors.red, fontSize: 30)
                )
              ],
            ),
            const Text(
              "Tape le lapin",
              style: TextStyle(color: Colors.black, fontSize: 40, fontWeight: FontWeight.w900)
            ),
           Row(
             mainAxisAlignment: MainAxisAlignment.spaceEvenly,
             children: [
               b0,
               b1,
               b2
             ],
           ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                b3,
                b4,
                b5
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                b6,
                b7,
                b8
              ],
            ),
          ],
        ),
      ),
    );
  }
}
