import 'package:flutter/material.dart';

import '../widget/widget_support.dart';


class detais extends StatefulWidget {
  const detais({super.key});

  @override
  State<detais> createState() => _detaisState();
}

class _detaisState extends State<detais> {
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
                  'images/plastikatık3.jpg',
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
                Text('Plastik atıkların yalnızca %9’u geri dönüştürülüyor ve geri kalan kısmı çevreye büyük zarar veriyor. Tek bir plastik şişeyi geri dönüştürmek, bir ampulü 3 saat çalıştıracak kadar enerji tasarrufu sağlar. Ayrıca, geri dönüştürülmüş plastik, yeni plastik üretimine göre %70 daha az enerji tüketir ve karbon salınımını azaltır.',style:AppWidget.semiBoldTextFeildStyle() ,),
                SizedBox(height: 20.0,),
                Row(children: [
                  Text('Bir plastik şişe doğada 450 yıl kalır.', style: AppWidget.LightTextFeildStyle(),),
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