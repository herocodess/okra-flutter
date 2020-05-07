import 'package:flutter/material.dart';
import 'package:okra_widget/Okra.dart';
import 'package:okra_widget/models/Enums.dart';
import 'package:okra_widget/utils/okra_options.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Okra Link Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(title: 'Okra Test Widget'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
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
        // Here we take the value from the MyHomePage object that was created by
        // the App.build method, and use it to set our appbar title.
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text('Click button to open Okra Widget'),
            RaisedButton(
              color: Colors.green,
              child: Text(
                "Click me",
                style: TextStyle(color: Colors.white),
              ),
              onPressed: () {
                setState(() {
                  Okra.create(
                    context,
                    OkraOptions(
                        isWebview: true,
                        key: "c81f3e05-7a5c-5727-8d33-1113a3c7a5e4",
                        token: "5d8a35224d8113507c7521ac",
                        products: [Product.auth, Product.balance],
                        environment: Environment.dev,
                        clientName: "Bassey"),
                  );
                });
              },
            )
          ],
        ),
      ),
      // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
