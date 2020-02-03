import 'package:flutter/material.dart';

void main() => runApp(new MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: 'Welcome to Flutter',
      theme: new ThemeData(
        primaryColor: Colors.white,
      ),
      home: new Scaffold(
        body: ConstrainedBox(
          constraints: BoxConstraints.expand(),
          child: Stack(
            fit: StackFit.expand, //未定位widget占满Stack整个空间
            alignment: Alignment.center,
            children: <Widget>[
              new Column(children: [
                new Container(
     
                ),
                const SizedBox(height: 100),
                new Container(
                  margin: const EdgeInsets.fromLTRB(25.0, 35.0, 25.0, 0.0),
                  child: new Text(
                    '这是一个flutter页面!!!!',
                    style:
                        new TextStyle(fontSize: 20.0, color: Colors.red),
                    textAlign: TextAlign.left,
                  ),
                ),
              ]),
              Positioned(
                  bottom: 52.0,
                  child: Text(
                    "",
                    style: TextStyle(fontSize: 14.0, color: Colors.grey[666]),
                  ))
            ],
          ),
        ),
        backgroundColor: Colors.white,
      ),
    );
  }
}
