import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(home: MyWidget()));

class MyWidget extends StatefulWidget {
  const MyWidget({super.key});

  @override
  State<MyWidget> createState() => _MyWidgetState();
}

class _MyWidgetState extends State<MyWidget> {
  int level = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.indigo[50],
      appBar: AppBar(
        title: Text('ID Card'),
        centerTitle: true,
        backgroundColor: Colors.indigo,
        elevation: 0,
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          setState(() {
            level += 1;
          });
        },
        child: Icon(Icons.add),
      ),
      body: Padding(
        padding: EdgeInsets.fromLTRB(30, 40, 30, 0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Center(
              child: CircleAvatar(
                backgroundImage: NetworkImage(
                    'https://cdn.vectorstock.com/i/1000x1000/91/07/happy-man-face-vector-6619107.webp'),
                radius: 40,
              ),
            ),
            Divider(
              height: 60,
            ),
            Text(
              'Name',
              style: TextStyle(color: Colors.black, letterSpacing: 2),
            ),
            SizedBox(height: 10),
            Text(
              'John',
              style: TextStyle(
                  color: Colors.green,
                  letterSpacing: 2,
                  fontSize: 28,
                  fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 30),
            Text(
              'Current Level',
              style: TextStyle(color: Colors.black, letterSpacing: 2),
            ),
            SizedBox(height: 10),
            Text(
              '$level',
              style: TextStyle(
                  color: Colors.green,
                  letterSpacing: 2,
                  fontSize: 28,
                  fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 30),
            Row(
              children: [
                Icon(
                  Icons.email,
                  color: Colors.black,
                ),
                SizedBox(width: 10),
                Text(
                  'abc@abc.com',
                  style: TextStyle(
                      color: Colors.black, fontSize: 20, letterSpacing: 1),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}

class MyWidget2 extends StatefulWidget {
  const MyWidget2({super.key});

  @override
  State<MyWidget2> createState() => _MyWidget2State();
}

class _MyWidget2State extends State<MyWidget2> {
  @override
  Widget build(BuildContext context) {
    return const Placeholder();
  }
}
