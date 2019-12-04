import 'package:flutter/material.dart';
import 'package:breakpoints/breakpoints.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Breakpoints Example',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        title: Text(
            'Breakpoints Example ${width.toString()} ${Breakpoints(width).toString()}'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Breakpoints.only(width, [Breakpoints.xs, Breakpoints.lg])
                ? Text('xs or lg')
                : Container(),
            width.only([Breakpoints.xs, Breakpoints.lg])
                ? Text('xs or lg')
                : Container(),
            Breakpoints.isSm(width) ? Text('isSm') : Container(),
            width.isXl ? Text('isXl') : SizedBox(),
            Text(
              'Hello, World!',
            ),
          ],
        ),
      ),
    );
  }
}
