import 'package:flutter/material.dart';
 
void main() => runApp(MyApp());
 
class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
  
}


class _MyAppState extends State<MyApp> with SingleTickerProviderStateMixin{

  AnimationController controller;
  Animation<double> opacidad;

  @override
  void initState() {

    controller = AnimationController(vsync: this, duration: Duration(milliseconds: 1500));    
    opacidad   = Tween(begin: 0.0, end: 1.0).animate(controller);

    controller.forward();
    
    super.initState();
  }

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Material App',
      home: Scaffold(
        floatingActionButton: FloatingActionButton(
          child: Icon(Icons.access_alarm),
          onPressed: (){
            controller.forward(from: 0.0);
          },
        ),
        body: Center(
          child: FadeTransition(
            opacity: opacidad,
            child: Rectangulo(),
          ),
        ),
      )
    );  
  }
}

class Rectangulo extends StatelessWidget {
   @override
   Widget build(BuildContext context) {
   return Container(
      width: 280,
      height: 280,
      decoration: BoxDecoration(
        color: Colors.blue
      ),
    );
  }
}