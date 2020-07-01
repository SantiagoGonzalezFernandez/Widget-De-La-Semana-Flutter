import 'dart:async';

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

class MiPagina extends StatefulWidget {
  @override
  _MiPaginaState createState() => _MiPaginaState();
}

class _MiPaginaState extends State<MiPagina> {

  final colorStream = StreamController<Color>();

  int counter = -1;

  final List<Color> colorList = [
    Colors.blue,
    Colors.yellowAccent,
    Colors.green
  ];

  @override
  void dispose(){
    colorStream.close();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: StreamBuilder(
          stream: colorStream.stream,
          builder: (BuildContext context, AsyncSnapshot<dynamic> snapshot){ 
            if(!snapshot.hasData){
              return LoadingWidget();
            }

            if(snapshot.connectionState == ConnectionState.done){
              return Text('Fin del Stream :(');
            }

            return Container(
              height: 150.0,
              width: 150.0,
              color: snapshot.data,
            );
          },
        ) 
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.color_lens),
        onPressed: (){
          counter ++;
          if(counter < colorList.length){
            colorStream.sink.add(colorList[counter]);
          }else{
            colorStream.close();
          }
        },
      ),
    );
  }
}

class LoadingWidget extends StatelessWidget {
  const LoadingWidget({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Text('Esperando clicks'),
        SizedBox(height: 20.0,),
        CircularProgressIndicator()
      ],
    );
  }
}