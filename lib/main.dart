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
      body: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          Text('Text 1'),
          MaterialButton(
            onPressed: () {},
            color: Colors.amber,
            child: Text('Button'),
          ),
          Container(
            color: Colors.lime,
            padding: EdgeInsets.all(30),
            child: Text('Inside Container'),
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
