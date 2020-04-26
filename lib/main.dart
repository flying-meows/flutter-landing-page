import 'package:flutter/material.dart';
// import 'package:flutter_web/material.dart'; 
import 'widgets/navbar.dart';
import 'utils/responsiveLayout.dart';

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
      // decoration: BoxDecoration(
      //   gradient: LinearGradient(
      //     colors: [
      //       Color(0xFFFFFBFF), 
      //       Color(0xFF3023AE),
      //     ])),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        body: SingleChildScrollView(
          child: Column(
            children: <Widget>[NavBar(),Body()],
          )
        ),
      )
    );
  }
}


class Body extends StatelessWidget {
  @override 
  Widget build(BuildContext context) {
    return ResponsiveLayout(
      largeScreen: LargeChild(),
      // smallScreen: SmallChild(),
    );
  }
}

class LargeChild extends StatelessWidget {
  @override 
  Widget build(BuildContext context) {
    return SizedBox(
      height: 600, 
      child: Stack(
        fit: StackFit.expand,
        children: <Widget>[
          FractionallySizedBox(
            alignment: Alignment.centerRight,
            widthFactor: .6,
            // <a href="https://www.freepik.com/free-photos-vectors/people">People vector created by stories - www.freepik.com</a>
            child: Image.network("assets/cat-lady.png",scale:.85),
          ),
          FractionallySizedBox(
            alignment: Alignment.centerLeft,
            widthFactor: .6, 
            child: Padding(
              padding: EdgeInsets.only(left: 48),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start, 
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Text("မင်္ဂလာပါ", 
                    style: TextStyle(
                      fontSize: 60,
                      fontWeight:FontWeight.bold, 
                      fontFamily: "Montserrat-Regular",
                      color: Color(0xFF111111)
                    ),
                  ),

                  RichText(
                    text: TextSpan(
                      text: "Say Hi to ", 
                      style: TextStyle(
                        fontSize: 60, 
                        color: Color(0xFF8591B0)
                      ),
                      children: [
                        TextSpan(
                          text: "🐱", 
                          style: TextStyle(
                            fontSize: 60, 
                            fontWeight: FontWeight.bold, 
                            // color: Colors.black54
                          )
                        )
                      ]
                    ),
                  )
                ]
              )
              )
            )
        ],
      ),
    );
  }
}