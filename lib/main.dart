import 'package:flutter/material.dart';

import 'dart:math';

void main() {
  runApp(MaterialApp(home: Magicsl()));
}

class Magicsl extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.blue,
          centerTitle: true,
          title: Text(
            'Ask Me',
            style: TextStyle(
              fontFamily: 'Niconne',
              color: Colors.white,
              fontWeight: FontWeight.bold,
              fontSize: 35.0,
              wordSpacing: 10.0,
            ),
          ),
        ),
        body: Magicsf(),
      ),
    );
  }
}

class Magicsf extends StatefulWidget {
  @override
  _MagicsfState createState() => _MagicsfState();
}

class _MagicsfState extends State<Magicsf> {
  int i = 0;
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: <Widget>[
          SizedBox(
            height: 30.0,
          ),
          TextField(
            decoration: InputDecoration(
              border: OutlineInputBorder(),
              hintText: 'Ask Your Yes/No Questions here',
               hintStyle: TextStyle(
                 fontWeight: FontWeight.w300, 
                 color: Colors.grey
                 ),
           ),
            style: TextStyle(
              color: Colors.black, 
              fontFamily: 'pacifico',
              fontSize: 20.0,
              ),
              cursorColor: Colors.blue,
              autocorrect: false,
              onSubmitted: (text){
                setState(() {
                  i = Random().nextInt(5)+1;
                });
                
              },
              
          ),
          SizedBox(
            height: 30.0,
          ),
          Expanded(
            child: Image.asset('images/ball$i.jpg'),
          ),
        ],
      ),
    );
  }
}
