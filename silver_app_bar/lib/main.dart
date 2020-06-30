import 'package:flutter/material.dart';
import 'dart:math';
 
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

  final rnd = Random();

  final List<Color> colores = [
    Colors.red,
    Colors.redAccent,
    Colors.blue,
    Colors.black,
    Colors.amberAccent,
    Colors.yellowAccent,
    Colors.yellow,
    Colors.purple,
    Colors.purpleAccent,
    Colors.blueAccent,
    Colors.grey,
    Colors.blueGrey,
    Colors.green,
    Colors.greenAccent,
  ];

  @override
  Widget build(BuildContext context) {

    final List<Widget> items = List.generate(100, (index) => Container(
      width: double.infinity,
      height: 150.0,
      color: colores[rnd.nextInt(this.colores.length)],
    ));

    // return Scaffold(
    //   body: ListView.builder(itemBuilder: (BuildContext context, int index) {
    //     return items[index];
    //   })
    // );

    return Scaffold(
      body: CustomScrollView(
        slivers: <Widget>[
          SliverAppBar( 
            floating: true,           
            pinned: true,
            centerTitle: true,
            expandedHeight: 200.0,
            title: Text('SliverAppBar'),
            flexibleSpace: Image.network(
              'https://static.vecteezy.com/system/resources/thumbnails/000/246/312/original/mountain-lake-sunset-landscape-first-person-view.jpg',
              fit: BoxFit.cover,
            ),
          ),
          SliverList(
            delegate: SliverChildListDelegate(items),
          )
        ],
      ),
    );
  }
}