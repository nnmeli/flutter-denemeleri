
void main() {
  var oyuncu1 = Player("ali", "fener", 100, 90);
  var oyuncu2 = Player("ahmet", "efes", 90, 90, formaRengi: "mavi");
  var oyuncu3 = Player("ayse", "ankara", 70, 100, kramponRengi: "turuncu");
  var oyuncu4 = Player("hayriye" , "antalya" , 87 , 100);



  print("a");
  karsilasma(a, b) {

     if (a.power > b.power) {
       a.puanlar.add(3);
       return ("${a.name} kazanır ");

    }
    else if (b.power > a.power) {
       b.puanlar.add(3);
      return ("${b.name} kazanır");
     }
    else {return ("berabere");}
  }
  print(karsilasma(oyuncu2, oyuncu4));
  //print("oyuncu birin aldığı puanlar : ${oyuncu1.puanlar} , oyuncu 2nin aldığı puanlar :${oyuncu2.puanlar}");
}

class Player {
  late final String name;
  late final String takim;
  late final int takimGucu;
  late final int oyuncuGucu;
  late final String? formaRengi;
  late final String? kramponRengi;
  late final List puanlar = [] ;
  late final int power = oyuncuGucu*takimGucu ;

  Player(this.name, this.takim, this.oyuncuGucu, this.takimGucu,
      {this.formaRengi, this.kramponRengi});

}
