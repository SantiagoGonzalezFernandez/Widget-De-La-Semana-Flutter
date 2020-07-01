import 'package:flutter/material.dart';
 
void main() => runApp(MyApp());
 
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Material App',
      home: HomePage()
    );
  }
}

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Tooltip(
          message: 'Este es el mejor boton del mundo',
          preferBelow: false,
          decoration: BoxDecoration(
            color: Colors.black45,
            borderRadius: BorderRadius.circular(20.0)
          ),
          child: OutlineButton(
            child: Text('Hola Mundo', style: TextStyle(fontSize: 20.0)),
            shape: StadiumBorder(),
            onPressed: (){},
          ),
        ),
      ),
    );
  }
}