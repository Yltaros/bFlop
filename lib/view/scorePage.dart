import 'package:flutter/material.dart';

  //Importation du controlleur
import '../controller/scorePageCtrl.dart';

  //Importation des pages
import './agendaPage.dart';
import './webetudPage.dart';
import './roomPage.dart';
import './absencePage.dart';

class ScorePageMain extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Notes',
      debugShowCheckedModeBanner: false,
      home: new ScorePage(title: 'Notes'),
    );
  }
}

class ScorePage extends StatefulWidget {
  final String title;
  
  ScorePage({Key key, this.title}) : super(key: key);

  @override
  _ScorePageState createState() => _ScorePageState();
}

class _ScorePageState extends State<ScorePage> {
  
    //Controlleurs
  ScorePageCtrl ctrl = new ScorePageCtrl();


  //INTERFACE

    //Theme
  Brightness theme;


  void test() {

  }


  void switchTheme() {
    setState(() {
      this.theme = ctrl.switchTheme(this.theme, false);
    });
  }


  @override
  Widget build(BuildContext context) {


      //UI

    return MaterialApp(
      title: widget.title,
      theme: ThemeData(
        brightness: this.theme,
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      debugShowCheckedModeBanner: false,
      home: Scaffold(

        appBar: AppBar(
          title: new Text(widget.title),
          //leading: new IconButton(icon: Icon(Icons.menu), onPressed: test),
          actions: <Widget>[
              new IconButton(icon: Icon(Icons.refresh), tooltip: 'Rafraichir', onPressed: test),
              new IconButton(icon: Icon(Icons.brightness_4), tooltip: 'Theme', onPressed: switchTheme),
              new IconButton(icon: Icon(Icons.more_vert), tooltip: 'Options', onPressed: test),],
        ),
/*
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text(
                'You have pushed the button this many times:',
              ),
              Text(
                '$_counter',
                style: Theme.of(context).textTheme.headline4,
              ),
            ],
          ),
        ),

        floatingActionButton: FloatingActionButton(
          onPressed: _incrementCounter,
          tooltip: 'Increment',
          child: Icon(Icons.add),
        ),
*/
      ),
    );
    
  }
}