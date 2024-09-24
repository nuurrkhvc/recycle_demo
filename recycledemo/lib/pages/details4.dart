import 'package:flutter/material.dart';

import '../widget/widget_support.dart';

class Details4 extends StatefulWidget {
  const Details4({super.key});

  @override
  State<Details4> createState() => _Details4State();
}

class _Details4State extends State<Details4> {
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
                      color: Colors.black26,
                    )),
                Image.asset(
                  'images/kiyafetbagis.jpg',
                  width: MediaQuery.of(context).size.width,
                  height: MediaQuery.of(context).size.height / 2.5,
                  fit: BoxFit.cover,
                ),
                SizedBox(
                  height: 15.0,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [


                      ],
                    ),
                    Spacer(),
                    Container(
                      decoration: BoxDecoration(
                          color: Colors.brown,
                          borderRadius: BorderRadius.circular(10)),
                      child: Icon(
                        Icons.recycling,
                        color: Colors.lightGreen,
                      ),
                    ),
                    SizedBox(width:10.0 ,),
                    Text('Önemli detaylar', style: AppWidget.semiBoldTextFeildStyle(),),
                    SizedBox(width:10.0 ,),
                    Container(
                      decoration: BoxDecoration(
                          color: Colors.brown,
                          borderRadius: BorderRadius.circular(10)),
                      child: Icon(
                        Icons.recycling_outlined,
                        color: Colors.lightGreen,
                      ),
                    )
                  ],
                ),
                SizedBox(height: 20.0,),
                Text('Kıyafet bağışlamak, ihtiyaç sahiplerine yardım ederken çevreye de katkı sağlar. Kullanılmayan kıyafetler geri dönüştürülerek israfı ve kaynak tüketimini azaltır, atık yönetimine destek olur. Bu, toplumsal dayanışmayı güçlendirirken sürdürülebilir bir gelecek için önemli bir adımdır.',style:AppWidget.semiBoldTextFeildStyle() ,),
                SizedBox(height: 20.0,),
                Row(children: [
                  Text(' sürdürülebilir bir geleceğe adım at.', style: AppWidget.LightTextFeildStyle(),),
                  Icon(Icons.access_time_outlined,color: Colors.brown,)
                ],),
                Row(children: [

                ],)
              ],
            ),
            ),
        );
  }
}
