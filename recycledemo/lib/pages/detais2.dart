import 'package:flutter/material.dart';

import '../widget/widget_support.dart';


class Detais2 extends StatefulWidget {
  const Detais2({super.key});

  @override
  State<Detais2> createState() => _Detais2State();
}

class _Detais2State extends State<Detais2> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
            margin: EdgeInsets.only(top: 50, left: 20.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                GestureDetector(
                    onTap: () {
                      Navigator.pop(context);
                    },
                    child: Icon(
                      Icons.arrow_back_ios_new_outlined,
                      color: Colors.lightGreen,
                    )),
                Image.asset(
                  'images/kagıtatık2.jpg',
                  width: MediaQuery.of(context).size.width,
                  height: MediaQuery.of(context).size.height / 2.5,
                  fit: BoxFit.fill,
                ),
                SizedBox(height:25.0 ,),
                Text('Kağıt atıkların geri dönüşümü, toplum için çevreyi koruma, kaynakları verimli kullanma ve sürdürülebilir bir gelecek inşa etme açısından hayati öneme sahiptir. Ormanların korunması, hava kalitesinin iyileşmesi ve su tasarrufu, toplumun genel sağlığına olumlu katkıda bulunur. Ayrıca, geri dönüşüm ekonomisi yeni iş fırsatları yaratır ve yerel toplulukların çevre bilincini artırarak daha sorumlu bir yaşam tarzı benimsemelerini sağlar. Bu, toplumun doğayla uyum içinde daha sağlıklı bir geleceğe adım atmasını destekler.',style: AppWidget.semiBoldTextFeildStyle() ,),
                Row(children: [
                  Container(
                    decoration: BoxDecoration(color: Colors.brown),
                    child: Icon(Icons.recycling_outlined,color: Colors.lightGreen,),
                  )
                ],)
              ],
            ),
            ),
        );
    }
}