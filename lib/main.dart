import 'package:flutter/material.dart';

void main() =>
  runApp(MaterialApp(
    home: MyWidget ()
    ));


class MyWidget extends StatelessWidget {
  const MyWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Flutter Sample',
        style: TextStyle(
          fontFamily: 'Montserrat',
          fontWeight: FontWeight.w900
        ),),
        centerTitle: true,
        backgroundColor: Colors.red[600],
      ),
      body: const Center(
        child: Text(
          'Body',
          style: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.bold,
            fontFamily: 'Montserrat',
            letterSpacing: 2,
            color: Colors.blueAccent 
          ),)
        ),
        floatingActionButton: FloatingActionButton(
          child: Text('Click'),
          backgroundColor: Colors.red[600],
          onPressed: () {
            
          },
        ),
    );
  }
}