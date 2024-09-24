import 'package:flutter/material.dart';

import '../widget/widget_support.dart';

class Details5 extends StatefulWidget {
  const Details5({super.key});

  @override
  State<Details5> createState() => _Details5State();
}

class _Details5State extends State<Details5> {
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
                  'images/kiyafet1.jpg',
                  width: MediaQuery.of(context).size.width,
                  height: MediaQuery.of(context).size.height / 2.5,
                  fit: BoxFit.fill,
                ),
                SizedBox(height:35.0 ,),
                Text('Kıyafet geri dönüşümü, kaynak israfını önleyip atık miktarını azaltarak çevreyi korur. Bu süreç, enerji ve su tasarrufu sağlar, karbon ayak izini düşürür, sürdürülebilir tüketimi destekler. Çevre dostu bir gelecek için kıyafet geri dönüşümü büyük önem taşır.',style: AppWidget.semiBoldTextFeildStyle() ,),
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

