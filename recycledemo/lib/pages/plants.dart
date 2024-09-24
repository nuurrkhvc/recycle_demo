import 'package:flutter/material.dart';

import '../widget/widget_support.dart';

class PlantPage extends StatefulWidget {
  const PlantPage({super.key});

  @override
  State<PlantPage> createState() => _PlantPageState();
}

class _PlantPageState extends State<PlantPage> {
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
              'images/recycle_plant.png',
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
              'Bitki yetiştirmek, geri dönüşüme olumlu katkılar sağlar. Bitkiler karbonu emerek hava kalitesini artırır, organik atıkları kompost yaparak gübreye dönüştürür ve geri dönüştürülebilir malzemelerle yetiştirildiğinde atıkları azaltır. Ayrıca suyu filtreleyerek temizlenmesine yardımcı olur ve sürdürülebilir tarımı destekler. Bu sayede çevresel geri dönüşüm süreçlerine fayda sağlar.',
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
