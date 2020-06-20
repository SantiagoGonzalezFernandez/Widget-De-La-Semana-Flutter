import 'package:flutter/material.dart';
 
void main() => runApp(MyApp());
 
class MyApp extends StatelessWidget {

  final estilo = TextStyle(fontSize: 20.0);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Material App',
      home: Scaffold(
        body: SafeArea(
          bottom: false,
          child: ListView(
            children: List.generate(
              100, (i) => Text('$i - Hola Mundo', style: estilo)
            ),
          ),
        )
      )
    );
  }
}