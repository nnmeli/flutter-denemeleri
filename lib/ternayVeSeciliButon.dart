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
                    color1 == Colors.yellow ? color1= Colors.red : color1==Colors.red ? color1 = Colors.yellow : null;
                  });
                },
                child: Container(
                  width: 150,
                  height: 400,
                  color: color1,
                ),
              ),
              TextButton(
                style: TextButton.styleFrom(foregroundColor: Colors.black),
                onPressed: () {
                  setState(() {
                    color2 == Colors.blue ? color2= Colors.green : color2==Colors.green ? color2 = Colors.blue : null;
                  });
                },
                child: Container(
                  width: 150,
                  height: 400,
                  color: color2,
                ),
              )
            ],
          ),
        ],
      ),
    );
  }
}
// Expanden widgeti objeleri ekrana göre kısıtlar , kardes olmalılar

// onpressed içine setstate koymalıyız ki statein değiştiğini anlasın
