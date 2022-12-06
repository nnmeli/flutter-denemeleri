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
          child: Column(
            mainAxisSize: MainAxisSize.max,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                color: Colors.yellow,
                width: 200,
                height: 100,
              ),

              /*Container(

                color: Colors.purple ,
                width: 200,
                height: 100,

              ),*/
              Row(mainAxisAlignment: MainAxisAlignment.spaceBetween ,
                  children: [
                    Container(
                      color: Colors.yellow,
                      width: 100,
                      height: 100,
                    ),
                    Container(
                      color: Colors.purple,
                      width: 100,
                      height: 100,
                    ),
                  ]),
              Container(
                color: Colors.blue,
                width: 200,
                height: 100,
              )
            ],
          ),
        ),
      ),
    );
  }
}

// BU SCAFFOLD KISMINI NOT AL

//Container eğer kısıtlanmazsa tüm sayfaya yayılır ,
// o yüzden içine child konup kısıtlanmalı

/*
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
margin: EdgeInsets.fromLTRB(55, 120, 0,0),//dısarı bosluk
child: Text(style: TextStyle(fontSize: 30 , color : Colors.white70 , fontWeight: FontWeight.bold),"melihbaskan"),
),
*/
