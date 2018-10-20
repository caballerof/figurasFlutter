import 'package:flutter/material.dart';

void main() {
  runApp(new MaterialApp(home: new MyApp()));
}

class MyApp extends StatefulWidget {
  // This widget is the root of your application.
  @override
  _ApplicationState createState() => new _ApplicationState();
}

class _ApplicationState extends State<MyApp> {
  Widget build(BuildContext context) {
    return new Scaffold(
        appBar: new AppBar(
          title: new Text('Calculo de areas'),
        ),
        body: new ListView(
          padding: new EdgeInsets.all(10.0),
          children: <Widget>[
            const Text(
              'Seleciona una figura',
              textAlign: TextAlign.center,
              overflow: TextOverflow.clip,
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 30.0),
            ),
            GestureDetector(
                onTap: _pushSaved,
                child: new Card(
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: <Widget>[
                      const ListTile(
                        leading: Icon(
                          Icons.change_history,
                          color: Colors.yellow,
                        ),
                        title: Text('Triangulo'),
                        subtitle: Text('Calcular el area del triangulo.'),
                      )
                    ],
                  ),
                )),
            Card(
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: <Widget>[
                  const ListTile(
                    leading: Icon(
                      Icons.brightness_1,
                      color: Colors.blue,
                    ),
                    title: Text('Circulo'),
                    subtitle: Text('Calcular el area del circulo.'),
                  ),
                ],
              ),
            ),
            Card(
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: <Widget>[
                  const ListTile(
                    leading: Icon(Icons.blur_linear, color: Colors.orange),
                    title: Text('Rectangulo'),
                    subtitle: Text('Calcular el area del rectangulo.'),
                  ),
                ],
              ),
            )
          ],
        ));
  }
}

void _pushSaved() {
  print("Hola triangulo");
}
