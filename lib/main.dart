import 'package:flutter/material.dart';
import 'quote.dart';
import 'quote_card.dart';

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
        children: quotes
            .map((e) => QuoteCard(
                quote: e,
                delete: () {
                  setState(() {
                    quotes.remove(e);
                  });
                }))
            .toList(),
      ),
    );
  }
}
