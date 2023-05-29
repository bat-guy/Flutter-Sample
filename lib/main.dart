import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(home: MyWidget()));

class MyWidget extends StatelessWidget {
  const MyWidget({super.key});

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
      body: const Padding(
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
              '10',
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
