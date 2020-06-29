import 'package:flutter/material.dart';
 
void main() => runApp(MyApp());
 
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Material App',
      home: Scaffold(
        body: Center(
          child: Container(
            width: double.infinity,
            height: 300.0,
            child: PageView(
              controller: PageController(
                viewportFraction: 0.5
              ),
              // scrollDirection: Axis.vertical,
              physics: BouncingScrollPhysics(),
              children: <Widget>[
                Pagina(Colors.blue),
                Pagina(Colors.red),
                Pagina(Colors.green),
              ],
            ),
          ),
        )
      ),
    );
  }
}

class Pagina extends StatelessWidget {

  final Color color;

  Pagina(this.color);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: double.infinity,
      margin: EdgeInsets.only(left: 20),
      decoration: BoxDecoration(
        color: color,
        borderRadius: BorderRadius.circular(30.0)
      ),
    );
  }
}