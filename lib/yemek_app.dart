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
          title: Text("Yemek Uygulamamız ",
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
  var image1 = "images/3b8a90fba6fb10d8778d16c5f2d6b6ad.png" ;

   var image2 = "images/c4a03bc5d9064a35a3354482f7717dab.jpg" ;

  late List resimler = [image1 , image2];

  int a = 0 ;

  @override
  Widget build(BuildContext context) {
    return Center(
        child: Column(
      children: [
        Text("burger"),
        Expanded(
          flex: 1,
          child: Padding(
            padding: const EdgeInsets.all(8.0),

            child: TextButton(
                style: TextButton.styleFrom(foregroundColor: Colors.red , ),

              child: Image.asset(resimler[a]),
              onPressed: () {
                setState((){
                  if (a == 0  ) { a = 1 ; }
                  else if  (a == 1) { a=0 ; }
                })  ;

                print("melihs");
              },
            ),
          ),
        ),

        Expanded(
          flex: 2,
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Image.asset("images/64b5662ced1d81af621d29d1eb321cac.jpg"),
          ),
        ),
        Expanded(
          flex: 2,
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Image.asset("images/268f920c0201b9d2876d0ccb2e4fd116.jpg"),
          ),
        ),
      ],
    ),
    );
  }
}
// Expanden widgeti objeleri ekrana göre kısıtlar , kardes olmalılar

// onpressed içine setstate koymalıyız ki statein değiştiğini anlasın
