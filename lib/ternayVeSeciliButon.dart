import 'package:flutter/material.dart';

void main() {
  runApp(BenimUygulamam());
}

class BenimUygulamam extends StatelessWidget {
  const BenimUygulamam({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: Text("SeciliButon",
              style: TextStyle(
                color: Colors.black,
                fontWeight: FontWeight.bold,
              )),
          backgroundColor: Colors.red,
        ),
        body: OrtaAlan(),
      ),
    );
  }
}

class OrtaAlan extends StatefulWidget {
  @override
  State<OrtaAlan> createState() => _OrtaAlanState();
}

class _OrtaAlanState extends State<OrtaAlan> {
  String buton = "bos";
  var color1 = Colors.red;
  var color2 = Colors.blue;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            mainAxisSize: MainAxisSize.max,
            children: [
              TextButton(
                style: TextButton.styleFrom(foregroundColor: Colors.black),
                onPressed: () {
                  setState(() {
                    buton = "Birinci";
                  });
                },
                child: Container(
                  child: Text("Birinci Buton"),
                  width: 150,
                  height: 400,
                  color: buton == "Birinci" ? color1 : color2,
                ),
              ),
              TextButton(
                style: TextButton.styleFrom(foregroundColor: Colors.black),
                onPressed: () {
                  setState(
                    () {
                      buton = "İkinci";
                    },
                  );
                },
                child: Container(
                  child: Text("İkinci Buton"),
                  width: 150,
                  height: 400,
                  color: buton == "İkinci" ? color1 : color2,
                ),
              )
            ],
          ),
        ],
      ),
    );
  }
}
//  ROW U ORTALAMAK İÇİN BİR DE COLUMN KULLANDIM AMA BODY KISMINDAN CENTER PARANTEZİNE ALSAYDIN GEREK KALMAZDI
//color1 == Colors.yellow ? color1= Colors.red : color1==Colors.red ? color1 = Colors.yellow : null;
