import 'package:flutter/material.dart';
 
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

class MiPagina extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        alignment: Alignment.center,
        padding: EdgeInsets.all(30.0),
        child: ClipPath(
          clipper: MyCustomClipper(),
          // borderRadius: BorderRadius.circular(50.0),
          // borderRadius: BorderRadius.only(topLeft: Radius.circular(100)),
          child: Image(
            image: NetworkImage('https://mljm66nyxdyi.i.optimole.com/P29XpA-_CVPWVwh/w:467/h:399/q:auto/https://sceel.io/wp-content/uploads/2019/10/Flutter-Logo-2.png'),
          ),
        ),
      )
    );
  }
}

class MyCustomClipper extends CustomClipper<Path> {

  @override
  Path getClip(Size size) {

    Path path = Path()
      ..lineTo(0.0, 0.0)
      ..lineTo(0.0, size.height)
      ..lineTo(size.width, size.height * 0.5)
      ..lineTo(size.width, size.height * 0.4);

    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) => false; //Esto deberia de estar en falso porque no deberiamos estarlo redibujando 
}