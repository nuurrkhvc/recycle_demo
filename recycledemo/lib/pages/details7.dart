import 'package:flutter/material.dart';

import '../widget/widget_support.dart';

class Details7 extends StatefulWidget {
  const Details7({super.key});

  @override
  State<Details7> createState() => _Details7State();
}

class _Details7State extends State<Details7> {
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
                  'images/gardener.png',
                  width: MediaQuery.of(context).size.width,
                  height: MediaQuery.of(context).size.height / 2.5,
                  fit: BoxFit.fill,
                ),
                SizedBox(height:35.0 ,),
                Text('Bitki yetiştirmek, havayı temizleyerek oksijen sağlar, stres azaltıcı etkisiyle ruh sağlığını iyileştirir ve gıda güvenliği sunar. Aynı zamanda biyoçeşitliliği destekler, sürdürülebilir yaşamı teşvik eder ve fiziksel aktivite sağlar. Doğayla bağ kurarak hem çevreye hem de bireysel sağlığa katkıda bulunur.',style: AppWidget.semiBoldTextFeildStyle() ,),
                Row(children: [
                  Container(
                    decoration: BoxDecoration(color: Colors.brown),
                    child: Icon(Icons.accessibility_new_rounded,color: Colors.lightGreen,),
                  )
                ],)
              ],
            ),
            ),
        );
    }
}
