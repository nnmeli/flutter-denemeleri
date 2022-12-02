import 'package:flutter/material.dart';



void main() {
  runApp(AnaUygulama());
}

class AnaUygulama extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
          backgroundColor: Colors.deepOrangeAccent[200],
          body: SafeArea(
            child: Container(
              width: 300,
              height: 370,
              alignment: Alignment.center,
              decoration: BoxDecoration(
                  shape:BoxShape.circle ,
                  // borderRadius: BorderRadius.circular(50),
                  color: Colors.indigo,
                  border: Border.all(color: Colors.yellow, width:10 )
              ),

              padding: EdgeInsets.all(50),//iceri bosluk
              margin: EdgeInsets.fromLTRB(60, 120, 0,0),//dısarı bosluk
              child: Text(style: TextStyle(fontSize: 30 , color : Colors.white70 , fontWeight: FontWeight.bold),"melihbaskan"),
            ),
          ),
        ));
  }
}

// BU SCAFFOLD KISMINI NOT AL

//Container eğer kısıtlanmazsa tüm sayfaya yayılır ,
// o yüzden içine child konup kısıtlanmalı
