import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      // theme: ThemeData(fontFamily: 'IndieFlower'),
      home: Scaffold(
        backgroundColor: Colors.indigo,
        appBar: AppBar(
          backgroundColor: Colors.blue,
          title: Text('Counter'),
          centerTitle: true,
        ),
        body: Center(
          child: Container(padding: EdgeInsets.all(16), child: CounterWidget()),
        ),
      ),
    );
  }
}

class CounterWidget extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _CounterWidgetState();
  }
}


class _CounterWidgetState extends State<CounterWidget> {
  int _count;

  @override
  void initState() {
    _count = 50;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Text('Tap "-" to decrement', style: TextStyle(color: Colors.white)),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            IconButton(
                icon: Icon(Icons.remove), color: Colors.white, onPressed: minus),
            Text('${_count}'),
            IconButton(
                icon: Icon(Icons.add), color: Colors.white, onPressed: add ),
          ],
        ),
        Text('Tap "+" to increment', style: TextStyle(color: Colors.white)),
      ],
    );
  }

  void add() {
    setState(() {
      _count++;
    });
  }

  void minus() {
    setState(() {
      _count--;
    });
  }


}
