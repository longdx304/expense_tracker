import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Expense Tracker',
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Expense Track'),
      ),
      body: Column(
        children: [
          Container(
            width: double.infinity,
            child: Card(
              elevation: 5,
              child: Text('CHART!'),
            ),
          ),
          Card(
            child: Text('LIST OF TRANSACTION'),
          ),
        ],
      ),
    );
  }
}
