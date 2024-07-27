import 'package:application/quote.dart';
import 'package:application/quote_card.dart';
import 'package:flutter/material.dart';

class QuoteList extends StatefulWidget {
  const QuoteList({super.key});

  @override
  State<QuoteList> createState() => _QuoteListState();
}

class _QuoteListState extends State<QuoteList> {


  List <Quote> quotes = [
    Quote(author: 'shimaa saleh' , text :'Swim like you’re training for a race. Train like you’re in a race.'),
    Quote(author: 'mohamed saleh' , text :'Pain is temporary. Pride is forever..'),
    Quote(author: 'ahmed saleh' , text :'Swimming is a sport for those who want to be challenged and succeed. Triplet strokes, backstrokes and IM’s. No matter your style, swimming will push you to be better!'),
    Quote(author: 'sarah saleh' , text :'Going for gold in competitive swimming means that you have to do more than all the other swimmers, which is just another kind of pressure that builds character.'),
    Quote(author: 'mariam saleh' , text :'Swimming isn’t just exercise, it’s a lifestyle. It’s not what you do. It’s who you are.'),
    Quote(author: 'marwa saleh' , text :'Swimming for me is about change, pushing through pain and working hard to get better. It’s not about giving up; it’s about pushing through.'),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.grey[200],
        appBar: AppBar(
          title: const Text('Awesome Quotes'),
          centerTitle: true,
          backgroundColor: Colors.redAccent,
        ),
        body: SingleChildScrollView(
          child: Column(
            children: quotes.map((quote) => QuoteCard(
                quote: quote,
                delete : (){
                  quotes.remove(quote);
                  setState(() {});
                }
            )).toList(),
          ),
        )
    );
  }
}
