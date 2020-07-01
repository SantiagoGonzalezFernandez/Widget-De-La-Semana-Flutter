//Imports that are not mine
import 'package:flutter/material.dart';

//Imports that are mine

class DetailPage extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Detail'),
      ),
      body: Column(
        children: <Widget>[
          Hero(
            tag: 'logo',
            child: FlutterLogo(size: 450)
          ),
          Padding(
            padding: const EdgeInsets.all(30.0),
            child: Text(
              'Labore irure in et commodo do excepteur occaecat ea esse aute.',
              style: TextStyle(fontSize: 30.0),
            ),
          )
        ],
      )
    );
  }
}