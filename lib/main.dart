import 'package:flutter/material.dart';
import 'quote.dart';

void main() => runApp(MaterialApp(
  home: Home(),
));

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {

  int number = 0;
  List<Quote> quotes = [
    Quote(name: 'Oscar', pro: 'Game Developer'),
    Quote(name: 'Johnny', pro: 'Software Engineer'),
    Quote(name: 'Aiden', pro: 'AI Engineer')
  ];

  Widget quoteTemplate(quote){
    return Card(
      margin: const EdgeInsets.fromLTRB(5,5,5,10),
      child: Padding(
        padding: const EdgeInsets.all(5),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Center(
              child: CircleAvatar(
                radius: 40,
                backgroundImage: AssetImage('assets/image/pic.jpg'),
              ),
            ),
            Column(
              // crossAxisAlignment: CrossAxisAlignment.stretch,
              children: <Widget>[
                Text(
                  quote.name,
                  style: TextStyle(
                      fontSize: 18
                  ),
                ),
                SizedBox(height: 6),
                Text(
                  quote.pro,
                  style: TextStyle(
                      fontSize: 14,
                      color: Colors.grey
                  ),
                )
              ],
            )
          ],
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('My Profile'),
        centerTitle: true,
        backgroundColor: Colors.blue[600]
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          setState(() {
            number += 1;
          });
        },
        child: Icon(Icons.add),
        backgroundColor: Colors.grey,
      ),
      body: Padding(
        padding: const EdgeInsets.all(30),
        child: Column(
          children: quotes.map((quote) => quoteTemplate(quote)).toList(),
        ),
      )
    );
  }
}