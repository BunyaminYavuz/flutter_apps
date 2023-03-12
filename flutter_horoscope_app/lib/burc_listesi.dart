import 'package:flutter/material.dart';
import 'package:flutter_horoscope_app/burc_item.dart';
import 'package:flutter_horoscope_app/data/strings.dart';
import 'package:flutter_horoscope_app/model/burc.dart';

class BurcListesi extends StatelessWidget {
  late final List<Burc> tumBurclar;

  BurcListesi() {
    tumBurclar = veriKaynaginiHazirla();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Burclar Listesi")),
      body: ListView.builder(
        itemBuilder: (context, index) {
          return BurcItem(listelenenBurc: tumBurclar[index]);
        },
        itemCount: tumBurclar.length,
      ),
    );
  }

  List<Burc> veriKaynaginiHazirla() {
    List<Burc> gecici = [];
    for (int i = 0; i < 12; i++) {
      var burcAdi = Strings.BURC_ADLARI[i];
      var burcTarihi = Strings.BURC_TARIHLERI[i];
      var burcDetay = Strings.BURC_GENEL_OZELLIKLERI[i];
      //koc1.png degerini olusturmak Koc --> koc --> koc1.png
      var burcKucukResmi =
          Strings.BURC_ADLARI[i].toLowerCase() + "${i + 1}.png";
      //koc_buyuk1.png degerini olusturmak Koc --> koc --> koc_buyuk1.png
      var burcBuyukResmi =
          Strings.BURC_ADLARI[i].toLowerCase() + "_buyuk${i + 1}.png";

      Burc eklenecekBurc =
          Burc(burcAdi, burcDetay, burcTarihi, burcKucukResmi, burcBuyukResmi);
      gecici.add(eklenecekBurc);
    }
    return gecici;
  }
}
