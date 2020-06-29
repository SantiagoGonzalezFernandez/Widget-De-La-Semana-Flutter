import 'package:flutter/material.dart';
 
void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Material App',
      home: MiPagina1(),
    );
  }
}

class MiPagina1 extends StatefulWidget {
  const MiPagina1({
    Key key,
  }) : super(key: key);

  @override
  _MiPagina1State createState() => _MiPagina1State();
}

class _MiPagina1State extends State<MiPagina1> {

  double opacidad = 1;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.opacity),
        onPressed: (){
          setState(() {
            opacidad = (opacidad == 1 ) ? 0 : 1;
          });
        },
      ),
      body: Container(
        alignment: Alignment.center,
        width: double.infinity,
        height: double.infinity,
        child: Wrap(
          direction: Axis.vertical,
          spacing: 50.0,
          children: <Widget>[
            Rectangulo(Color(0xff00E057), 1.0),
            Rectangulo(Color(0xff00BFF4), opacidad),
            Rectangulo(Color(0xffFEBF2F), 1.0),
          ],
        ),
      )
    );
  }
}

class Rectangulo extends StatelessWidget {

  final Color color;
  final double opacidad;

  Rectangulo(this.color, this.opacidad);

  @override
  Widget build(BuildContext context) {
    return AnimatedOpacity(
      duration: Duration(milliseconds: 600),
      curve: Curves.easeOut,
      opacity: opacidad,
      child: Container(
        width: 180,
        height: 180,
        decoration: BoxDecoration(
          color: color
        ),
      ),
    );
  }
}