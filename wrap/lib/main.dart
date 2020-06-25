import 'package:flutter/material.dart';
 
void main() => runApp(MyApp());
 
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Material App',
      home: Scaffold(
        appBar: AppBar(
          title: Text('Wrap'),
        ),
        body: Center(
          child: Wrap(
            alignment: WrapAlignment.center,
            direction: Axis.horizontal,
            spacing: 10.0,
            children: <Widget>[
              Tag('Metal Gear'),
              Tag('Overwatch'),
              Tag('CyberPunk'),
              Tag('Control'),
              Tag('Call of Duty'),
              Tag('Smash'),
            ],
          )
        ),
      ),
    );
  }
}

class Tag extends StatelessWidget {

  final String texto;

  Tag( 
    this.texto
  );

  @override
  Widget build(BuildContext context) {
    return Chip(
      avatar: CircleAvatar(
        child: Text(this.texto[0]),
        backgroundColor: Colors.white,
      ),
      backgroundColor: Colors.blue,
      label: Text(this.texto, style: TextStyle(color: Colors.white),)
    );
  }
}