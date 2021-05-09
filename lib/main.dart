import 'package:flutter/material.dart';
import 'quote.dart';

void main() => runApp(MaterialApp(home: QuoteList()));

class QuoteList extends StatefulWidget {
  @override
  _QuoteListState createState() => _QuoteListState();
}

class _QuoteListState extends State<QuoteList> {
  List<Quote> quotes = [
    Quote(author: 'One Shithead', text: 'Be the Biggest shit head ever'),
    Quote(text: 'Be the Biggest shit head ever', author: 'Oscar Wilde'),
    Quote(text: 'Be the Biggest shit head ever', author: 'Oscar Wilde'),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      appBar: AppBar(
        title: Text('Fire Quotes'),
        centerTitle: true,
        backgroundColor: Colors.redAccent,
      ),
      body: Column(
        children: quotes.map((quote) {
          return Text('${quote.text} - ${quote.author}');
        }).toList(),
      ),
    );
  }
}
