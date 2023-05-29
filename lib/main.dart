import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(home: MyWidget()));

class MyWidget extends StatelessWidget {
  const MyWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Flutter Sample',
          style:
              TextStyle(fontFamily: 'Montserrat', fontWeight: FontWeight.w900),
        ),
        centerTitle: true,
        backgroundColor: Colors.red[600],
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          Container(
            padding: EdgeInsets.all(20),
            color: Colors.orangeAccent,
            child: Text('Text'),
          ),
          Container(
            padding: EdgeInsets.all(30),
            color: Colors.deepPurpleAccent,
            child: Text('Text 2'),
          ),
          Container(
            padding: EdgeInsets.all(40),
            color: Colors.redAccent,
            child: Text('Text 3'),
          )
        ],
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add),
        backgroundColor: Colors.red[600],
        onPressed: () {},
      ),
    );
  }
}
