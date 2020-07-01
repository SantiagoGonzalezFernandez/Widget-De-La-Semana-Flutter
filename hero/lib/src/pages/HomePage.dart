//Imports that are not mine
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

//Imports that are mine
import 'package:hero/src/pages/DetailPage.dart';

class HomePage extends StatelessWidget {

  void pushRoute(BuildContext context){
    Navigator.push(context, CupertinoPageRoute(
      builder: (BuildContext context) => DetailPage())
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Hero Animation'),
      ),
      body: Table(
        children: <TableRow>[
          TableRow(
            children: [
              Placeholder(fallbackHeight: 150.0,),
              Placeholder(fallbackHeight: 150.0,),
              Placeholder(fallbackHeight: 150.0,),
            ]
          ),
          TableRow(
            children: [
              Placeholder(fallbackHeight: 150.0,),
              Placeholder(fallbackHeight: 150.0,),
              Placeholder(fallbackHeight: 150.0,),
            ]
          ),
          TableRow(
            children: [
              GestureDetector(
                child: Hero(
                  tag: 'logo',
                  child: FlutterLogo(size: 150.0)
                ),
                onTap: () => pushRoute(context)
              ),
              Placeholder(fallbackHeight: 150.0,),
              Placeholder(fallbackHeight: 150.0,),
            ]
          ),
          TableRow(
            children: [
              Placeholder(fallbackHeight: 150.0,),
              Placeholder(fallbackHeight: 150.0,),
              Container()
            ]
          )
        ],
      )
    );
  }
}