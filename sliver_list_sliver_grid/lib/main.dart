import 'dart:math';

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

    final List<Widget> items = List.generate(200, (i) => Rectangulo(i));

    return Scaffold(
      body: CustomScrollView(
        slivers: <Widget>[
          SliverAppBar(
            centerTitle: true,
            title: Text('SliverGrid'),
          ),
          SliverGrid.extent(
            children: items,
            maxCrossAxisExtent: 90,
          ),
          SliverAppBar(
            centerTitle: true,
            title: Text('SliverList'),
            pinned: true,
          ),
          SliverList(
            delegate: SliverChildBuilderDelegate((context,i){
              return items[i];
            },
              childCount: items.length
            ),
          )
        ],
      )
    );
  }
}

class Rectangulo extends StatelessWidget {

  final int index;

  Rectangulo(this.index);

  @override
  Widget build(BuildContext context) {

    final rnd = Random();
    final r = rnd.nextInt(255);
    final g = rnd.nextInt(255);
    final b = rnd.nextInt(255);

    return Container(
      width: 150,
      height: 150,
      decoration: BoxDecoration(
        color: Color.fromRGBO(r, g, b, 1)
      ),
      child: Center(
        child: Text('$index', style: TextStyle(color: Colors.white)),
      ),
    );
  }
}