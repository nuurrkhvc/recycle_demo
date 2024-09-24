import 'package:flutter/material.dart';

import '../widget/widget_support.dart';

class Detais3 extends StatefulWidget {
  const Detais3({super.key});

  @override
  State<Detais3> createState() => _Detais3State();
}

class _Detais3State extends State<Detais3> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        margin: EdgeInsets.only(top: 50.0, left: 20.0, right: 20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            GestureDetector(
                onTap: () {
                  Navigator.pop(context);
                },
                child: Icon(
                  Icons.arrow_back_ios_new_outlined,
                  color: Colors.brown,
                )),
            Image.asset(
              'images/metalatık.jpg',
              width: MediaQuery
                  .of(context)
                  .size
                  .width,
              height: MediaQuery
                  .of(context)
                  .size
                  .height / 2.5,
              fit: BoxFit.fill,
            ),
            SizedBox(height: 15.0,),
            Text(
              'Metal atıkların geri dönüşümü, sadece kaynakları korumakla kalmaz, inanılmaz bir enerji tasarrufu sağlar. Örneğin, alüminyum geri dönüşümü, yeni alüminyum üretimine göre %95 daha az enerji tüketir. Bir ton çelik geri dönüştürüldüğünde ise, 1.5 ton demir cevheri tasarrufu sağlanır. Metal geri dönüşümü, madencilik ihtiyacını azaltarak doğal yaşam alanlarını korur, çevre kirliliğini önler ve daha temiz bir dünya için büyük bir fırsat sunar.',
              style: AppWidget.semiBoldTextFeildStyle(),),
            Row(children: [
              Container(
                decoration: BoxDecoration(color: Colors.brown),
                child: Icon(
                  Icons.recycling_outlined, color: Colors.lightGreen,),
              )
            ],)
          ],
        ),
      ),
    );
  }
}