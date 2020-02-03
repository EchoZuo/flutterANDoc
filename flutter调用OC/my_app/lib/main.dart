import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/services.dart';


void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(title: 'Flutter Demo Home Page'),
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

  // int _counter = 0;

  // void _incrementCounter() {
  //   setState(() {
  //     // _counter++;
  //   });
  // }

  // 调用原生方法
  // 有点像是和 JS 的交互，Flutter 是通过自定义的 MethodChannel 来做通道
  // MethodChannel 对应通道，invokeMethod 对应方法，上面的代码调用了通道‘echozuo’的‘comeonman’方法

  // 调用原生方法：让native响应一个方法，将值传入flutter，通过弹框展示出来
  Future runiOSMethod() async {
    const platform = const MethodChannel('come.echozuo.zzz/flutter');
    var result;
    try {
      result = await platform.invokeMethod('bestpay');
      return Future.value(result);
    } on PlatformException catch(e) {
      return Future.error(e.toString());
    }
  }

  // 调用原生方法，打开某一个native控制器
  Future runiOSMethod2() async {
    const platform = const MethodChannel('come.echozuo.zzz/flutter');
    var result;
    try {
      result = await platform.invokeMethod('bestpay1');
      return Future.value(result);
    } on PlatformException catch(e) {
      return Future.error(e.toString());
    }
  }

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(

        title: Text(widget.title),
      ),
      body: Center(

        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            // Text(
            //   'You have pushed the button this many times:',
            // ),
            // Text(
            //   '$_counter',
            //   style: Theme.of(context).textTheme.display1,
            // ),

          RaisedButton(
            onPressed: () async {
              var futureValue = await runiOSMethod();
              return showDialog(
                context: context,
                builder: (context) {
                  return AlertDialog(
                    content: Text(
                      futureValue,
                      textAlign: TextAlign.center,
                    ),
                  );
                }
              );
            },
            child: Text(
              '我是一个按钮',
              style: TextStyle(fontSize: 18.0),
            ),
            color: Colors.red,
            textColor: Colors.white,
          ),
          
          const SizedBox(height: 30),

          RaisedButton(
            onPressed: () async {
              var futureValue = await runiOSMethod2();
              return showDialog(
                context: context,
                builder: (context) {
                  return AlertDialog(
                    content: Text(
                      futureValue,
                      textAlign: TextAlign.center,
                    ),
                  );
                }
              );
            },

            textColor: Colors.white,
            padding: const EdgeInsets.all(0.0),
            child: Container(
              decoration: const BoxDecoration(
                gradient: LinearGradient(
                  colors: <Color>[
                    Color(0xFF0D47A1),
                    Color(0xFF1976D2),
                    Color(0xFF42A5F5)
                  ],
                ),
              ),
              padding: const EdgeInsets.all(10.0),
              child: Text(
                '我是一个渐变色按钮',
                style: TextStyle(fontSize: 18.0),
              ),
            ),

          ),
          // const SizedBox(height: 30),
          // RaisedButton(
          //   onPressed: () {},
          //   textColor: Colors.white,
          //   padding: const EdgeInsets.all(0.0),
          //   child: Container(
          //     decoration: const BoxDecoration(
          //       gradient: LinearGradient(
          //         colors: <Color>[
          //           Color(0xFF0D47A1),
          //           Color(0xFF1976D2),
          //           Color(0xFF42A5F5),
          //         ],
          //       ),
          //     ),
          //     padding: const EdgeInsets.all(10.0),
          //     child:
          //         const Text('Gradient Button', style: TextStyle(fontSize: 20)),
          //   ),
          // ),


            // FlatButton(
            //   onPressed: () async {
            //     var futureValue = await runiOSMethod();
            //     return showDialog(
            //       context: context,
            //       builder: (context) {
            //         return AlertDialog(
            //           content: Text(
            //             futureValue,
            //             textAlign: TextAlign.left,
            //           ),
            //         );
            //       },
            //     );
            //   },
            //   child: Text(
            //     '我是按钮',
            //     style: TextStyle(fontSize: 12.0),
            //   ),
            //   color: Colors.red,
            //   textColor: Colors.white,
            // )


        
            // FlatButton(
              // onPressed: () async {
              //   runiOSMethod2();
              // },
              // child: Text(
              //   '点击跳转native',
              //   style: TextStyle(fontSize: 12.0),
              // )
              // color: Colors.black
              // textColor: Colors.white,
            // )


          ],
        ),
      ),
      
      // floatingActionButton: FloatingActionButton(
      //   onPressed: _incrementCounter,
      //   tooltip: 'Increment',
      //   child: Icon(Icons.business_center),
      // ), // This trailing comma makes auto-formatting nicer for build methods.
      
    );
  }
}
