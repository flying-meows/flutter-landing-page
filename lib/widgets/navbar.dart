import 'package:flutter/material.dart';

class NavBar extends StatelessWidget {

  @override 
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 45, vertical: 38),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween, 
        children: <Widget>[
          Container(
            width: 60, 
            height: 60,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(18), 
              gradient: LinearGradient(
                colors: [
                  Color(0xFFC86DD7), 
                  Color(0xFF3023AE),
                ], 
                begin: Alignment.bottomRight,
                end: Alignment.topLeft
              )
            ),
            child: Center(
              child: Text("NP", 
                style: TextStyle(fontSize: 30, color: Colors.white),
              )
            )
          )
        ],
      ),
    );
  }
}