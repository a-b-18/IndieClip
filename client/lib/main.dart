import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

// Our top level main function
void main() => runApp(new MyApp());
//end


class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
        title: 'Indie Clip',
        theme: ThemeData(brightness: Brightness.light),
        home: Scaffold(body: HomePage()));
  }
}

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

    var firstContainer = Container(
        color: Colors.white,
        height: 300.0,
        child:
        TabBarView(
            children: [
              Center(child: Text('Home here')),
              Center(child: Text('News here')),
            ]
        )
    );
    var secondContainer = Container(
      color: Colors.lightBlue,
      child:
      TabBar(tabs: [Tab(text: 'Home'), Tab(text: 'News')],
        labelColor: Colors.black,
        indicatorColor: Colors.green,),
    );


    // Platform aware adjustments
    var column = Column();
    if (!kIsWeb) {
    column = Column(
        children: [
          firstContainer,
          secondContainer,
        ],
      );
    } else {
      column = Column(
        children: [
          secondContainer,
          firstContainer,
        ],
      );
    }

    return ListView(children: [
      DefaultTabController(
          length: 2,
          initialIndex: 0,
          child: column,
      )
    ]);
  }
}