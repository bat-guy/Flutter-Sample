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
      body:  Center(
        child: Image.asset('assets/IMG_0998.JPG')),
        floatingActionButton: FloatingActionButton(
          child: Text('Click'),
          backgroundColor: Colors.red[600],
          onPressed: () {
            
          },
        ),
    );
  }
}