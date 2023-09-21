import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';

import 'intl_delegate.dart';
import 'intl_localization.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      // TODO enregistrer les delegate pour la traduction
      localizationsDelegates: [
        DemoDelegate(),
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
      ],
      // TODO annoncer les locales qui sont gerees
      supportedLocales: [
        const Locale('en'),
        const Locale('fr'),
      ],
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
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
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Text(Locs.of(context).trans('title'),
                style: TextStyle(fontSize: 40)
            ),

            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Padding(
                    padding: EdgeInsets.all(20),
                  child: SizedBox(
                    height: 250,
                    width: 150,
                    child: Container(
                      color: Colors.grey,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [

                          Text(Locs.of(context).trans('chat1'),
                            style: TextStyle(fontSize: 20),
                          ),

                          SizedBox(
                            height: 200,
                            child: Image.asset('assets/images/dragon.png'),
                          )

                        ],
                      ),
                    ),
                  ),
                ),

                Padding(
                  padding: EdgeInsets.all(30),
                  child: SizedBox(
                    height: 250,
                    width: 150,
                    child: Container(
                      color: Colors.grey,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [

                          Text(Locs.of(context).trans('chat2'),
                            style: TextStyle(fontSize: 20),
                          ),

                          SizedBox(
                            height: 200,
                            child: Image.asset('assets/images/images.png'),
                          )

                        ],
                      ),
                    ),
                  ),
                ),

              ],
            ),

            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Padding(
                  padding: EdgeInsets.all(20),
                  child: SizedBox(
                    height: 250,
                    width: 150,
                    child: Container(
                      color: Colors.grey,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [

                          Text(Locs.of(context).trans('chat3'),
                            style: TextStyle(fontSize: 20),
                          ),

                          SizedBox(
                            height: 200,
                            child: Image.asset('assets/images/cat.png'),
                          )

                        ],
                      ),
                    ),
                  ),
                ),

                Padding(
                  padding: EdgeInsets.all(30),
                  child: SizedBox(
                    height: 250,
                    width: 150,
                    child: Container(
                      color: Colors.grey,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [

                          Text(Locs.of(context).trans('chat4'),
                            style: TextStyle(fontSize: 20),
                          ),

                          SizedBox(
                            height: 200,
                            child: Image.asset('assets/images/war.png'),
                          )

                        ],
                      ),
                    ),
                  ),
                ),

              ],
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ),
    );
  }
}
