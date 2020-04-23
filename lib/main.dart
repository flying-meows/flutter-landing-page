import 'package:flutter/material.dart';
// import 'package:flutter_web/material.dart'; 
import 'widgets/navbar.dart';

void main() {
  runApp(
    MaterialApp(
      title: 'Flutter Landing Page', 
      debugShowCheckedModeBanner: false, 
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: HomePage(),
    )
  );
}

class HomePage extends StatelessWidget {

  @override 
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: [
            Color(0xFFF8FBFF), 
            Color(0xFFFCFDFD),
          ])),
      child: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            NavBar()
          ],
        )
      )
    );
  }
}
