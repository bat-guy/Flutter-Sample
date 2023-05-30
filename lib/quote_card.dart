import 'package:flutter/material.dart';
import 'quote.dart';

class QuoteCard extends StatelessWidget {
  final Quotes quote;
  final VoidCallback delete;

  QuoteCard({required this.quote, required this.delete});

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.fromLTRB(16, 16, 16, 0),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Text(
              quote.quote,
              style: const TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                  color: Colors.deepPurple,
                  fontFamily: 'Montserrat'),
            ),
            SizedBox(height: 6),
            Text(
              quote.author,
              style: const TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 14,
                  color: Colors.grey,
                  fontFamily: 'Montserrat'),
            ),
            SizedBox(height: 6),
            Row(
              children: [
                IconButton(
                  onPressed: delete,
                  icon: const Icon(Icons.delete),
                ),
                Text('Delete')
              ],
            )
          ],
        ),
      ),
    );
  }
}
