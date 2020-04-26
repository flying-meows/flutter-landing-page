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
                  Text("Mingalarbar!", 
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
                      ], 
                    ),
                  ), 

                  Padding(
                    padding: const EdgeInsets.only(left: 12.0, top: 20), 
                    child: Text("LET'S FLY TO MARS"), 
                  ), 

                  SizedBox(
                    height: 40, 
                  ),

                  Padding(
                    padding: EdgeInsets.only(
                      left: 4.0, 
                      right: ResponsiveLayout.isSmallScreen(context) ? 4 : 130, 
                      top: 10, 
                      bottom: 40,
                    ),
                    child: Container(
                      height: 60,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(30),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.black12,
                            offset: Offset(0,8),
                            blurRadius: 8
                          ),
                        ]
                      ),
                      child: Padding(
                        padding: EdgeInsets.symmetric(horizontal: 20),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: <Widget>[
                            Expanded(
                              flex: 8,
                              child: TextField(
                                decoration: InputDecoration(
                                  border: InputBorder.none, 
                                  hintText: 'Your Email Address'
                                ),
                              ),
                            ),
                            // Expanded(
                            //     flex: 2,
                            // ),
                          ],
                        )
                      )
                    )
                    
                  ),
                ]
              )
              )
            )
        ],
      ),
    );
  }
}