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
      body: Container(
          padding: EdgeInsets.symmetric(horizontal: 20, vertical: 40),
          margin: EdgeInsets.all(20),
          color: Colors.grey[400],
          child: Center(
            child: IconButton(
                onPressed: () {},
                icon: Icon(Icons.alternate_email_outlined),
                color: Colors.amber),
          )),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add),
        backgroundColor: Colors.red[600],
        onPressed: () {},
      ),
    );
  }
}
