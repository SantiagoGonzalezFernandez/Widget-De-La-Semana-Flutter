import 'package:flutter/material.dart';
import 'package:inherited_widget/src/models/MisColores.dart';
 
void main() => runApp(MyApp());
 
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Material App',
      home: MiPagina(),
    );
  }
}

class MiPagina extends StatefulWidget {
  @override
  _MiPaginaState createState() => _MiPaginaState();
}

class _MiPaginaState extends State<MiPagina> {

  Color color1 = Colors.redAccent;
  Color color2 = Colors.teal;

  @override
  Widget build(BuildContext context) {
    return MisColoresW(
      color1: color1,
      color2: color2,
      child: Scaffold(
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: <Widget>[
              Rectangulo1(),
              Rectangulo2(),
            ],
          )
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: (){
            setState(() {
              color1 = Colors.pink;
              color2 = Colors.purple;
            });
          },
          child: Icon(Icons.contacts),
        ),
      ),
    );
  }
}

class Rectangulo1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    
    final misColoresW = context.dependOnInheritedWidgetOfExactType<MisColoresW>();

    return Container(
      width: 70,
      height: 70,
      decoration: BoxDecoration(
        color: misColoresW.color1
      ),
    );
  }
}

class Rectangulo2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

    final misColoresW = context.dependOnInheritedWidgetOfExactType<MisColoresW>();

    return Container(
      width: 70,
      height: 70,
      decoration: BoxDecoration(
        color: misColoresW.color2
      ),
    );
  }
}