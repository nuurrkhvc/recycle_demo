import 'package:flutter/material.dart';

import '../widget/widget_support.dart';

class Details6 extends StatefulWidget {
  const Details6({super.key});

  @override
  State<Details6> createState() => _Details6State();
}

class _Details6State extends State<Details6> {
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
                  'images/kiyafetbireysel.jpg',
                  width: MediaQuery.of(context).size.width,
                  height: MediaQuery.of(context).size.height / 2.5,
                  fit: BoxFit.fill,
                ),
                SizedBox(height: 20.0,),
                Text('Bireysel kıyafet yenileme, eski kıyafetlere yeni bir hayat vermek için boyama, kesip şekillendirme, yama ve nakış ekleme, aksesuar kullanma gibi yöntemlerle yapılabilir. Bu süreç, hem yaratıcılığı artırır hem de sürdürülebilir modaya katkı sağlar. Böylece kıyafetler özgün bir tarza kavuşur ve bütçeye de fayda sağlar.',style: AppWidget.semiBoldTextFeildStyle(),),
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
