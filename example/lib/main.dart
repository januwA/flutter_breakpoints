import 'package:flutter_web/material.dart';
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
            Breakpoints.only(width, [BreakpointsKeys.xs, BreakpointsKeys.lg])
                ? Text('xs or lg')
                : Container(),
            Breakpoints.isSm(width) ? Text('isSm') : Container(),
            Text(
              'Hello, World!',
            ),
          ],
        ),
      ),
    );
  }
}
