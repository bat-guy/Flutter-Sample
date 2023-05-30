import 'package:flutter/material.dart';
import 'quote.dart';

void main() => runApp(MaterialApp(home: ListWidget()));

class ListWidget extends StatefulWidget {
  const ListWidget({super.key});

  @override
  State<ListWidget> createState() => _ListWidgetState();
}

class _ListWidgetState extends State<ListWidget> {
  List<Quotes> quotes = [
    Quotes(quote: 'aksdhshkadjasdakhsj', author: 'John'),
    Quotes(quote: 'saudjghsghasdhjkakjs asdhj aksdakhsd sdf', author: 'Joe'),
    Quotes(quote: 'jhGASdiyeqwfiu iuash ais iaushd ', author: 'Jil')
  ];

  Widget quoteTemplate(quote) {
    return Card(
      margin: EdgeInsets.fromLTRB(16, 16, 16, 0),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Text(
              quote.quote,
              style: TextStyle(fontSize: 18, color: Colors.deepPurple),
            ),
            SizedBox(height: 6),
            Text(
              quote.author,
              style: TextStyle(fontSize: 14, color: Colors.grey),
            ),
          ],
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blueGrey,
      appBar: AppBar(
        title: const Text(
          'Quotes',
          style: TextStyle(color: Colors.black54),
        ),
        centerTitle: true,
        backgroundColor: Colors.tealAccent,
      ),
      body: Column(
        children: quotes.map((e) => quoteTemplate(e)).toList(),
      ),
    );
  }
}
