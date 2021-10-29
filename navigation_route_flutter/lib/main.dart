import 'package:flutter/material.dart';

void main() {
  runApp(new MaterialApp(
    home: new HalamanPertama(),
    routes: <String, WidgetBuilder>{
      'HalamanPertama': (BuildContext context) => new HalamanPertama(),
      'HalamanKedua' : (BuildContext context) => new HalamanKedua(),
    },
  ));
}

class HalamanPertama extends StatelessWidget {
 // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
      title: new Text("Portal Menu Akses Route"),
      backgroundColor: Colors.red,
    ),
      body: Center(
        child: new IconButton(
          icon: new Icon(
            Icons.headset,
            size: 50.0,
         ),
         onPressed: (){
           Navigator.pushNamed(context, '/HalamanKedua');
         },
      ),
      ),
    );
  }
}

class HalamanKedua extends StatelessWidget {
 // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
      title: new Text("SPEAKER"),
    ),
      body: new Center(
        child: new IconButton(
          icon: new Icon(
            Icons.speaker,
            size: 50.0,
            color: Colors.red,
         ),
         onPressed: (){
           Navigator.pushNamed(context, '/HalamanPertama');
         },
      ),
      ),
    );
  }
}
