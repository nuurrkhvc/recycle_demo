import 'package:flutter/material.dart';
import 'package:recycledemo/pages/details7.dart';
import 'package:recycledemo/pages/startpage.dart';


import '../widget/widget_support.dart';
import 'clothespages.dart';
import 'details.dart';
import 'detais2.dart';
import 'detais3.dart';
import 'map_page.dart';


class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  bool house = false, bus = false, plant = false, recycle = false, shop = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        margin: EdgeInsets.only(top: 50.0, left: 20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text("Merhaba İrem,", style: AppWidget.boldTextFeildStyle()),
                Container(
                  margin: EdgeInsets.only(right: 20.0),
                  padding: EdgeInsets.all(3),
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(8)),
                  child:
                      Icon(Icons.account_circle_outlined, color: Colors.brown),
                )
              ],
            ),
            SizedBox(
              height: 20.0,
            ),
            Text("Çevreci Alışkanlıklar",
                style: AppWidget.HeadlineTextFeildStyle()),
            Text("Keşfet ve Çevreci Alışkanlıklar Edin",
                style: AppWidget.LightTextFeildStyle()),
            SizedBox(
              height: 20.0,
            ),
            Container(margin: EdgeInsets.only(right: 20.0), child: showItem()),
            SizedBox(
              height: 30.0,
            ),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  GestureDetector(
                    onTap: (){
                      Navigator.push(context, MaterialPageRoute(builder: (context)=> detais()));
                    },
                    child: Container(
                      margin: EdgeInsets.all(4),
                      child: Material(
                        elevation: 5.0,
                        borderRadius: BorderRadius.circular(20),
                        child: Container(
                          padding: EdgeInsets.all(12),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Image.asset(
                                "images/plastic.png",
                                height: 150,
                                width: 150,
                                fit: BoxFit.cover,
                              ),
                              Text(
                                "Plastik Atık Dönüşümü",
                                style: AppWidget.semiBoldTextFeildStyle(),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 20.0,
                  ),
                  GestureDetector(
                    onTap: (){
                      Navigator.push(context, MaterialPageRoute(builder: (context)=> Detais2()));
                    },
                    child: Container(
                      margin: EdgeInsets.all(4),
                      child: Material(
                        elevation: 5.0,
                        borderRadius: BorderRadius.circular(20),
                        child: Container(
                          padding: EdgeInsets.all(12),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Image.asset(
                                "images/paper-bin.png",
                                height: 150,
                                width: 150,
                                fit: BoxFit.cover,
                              ),
                              Text(
                                "Kağıt Atık Dönüşümü",
                                style: AppWidget.semiBoldTextFeildStyle(),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 50.0,
            ),
            Container(
              margin: EdgeInsets.only(right: 10.0),
              child: Material(
                elevation: 5.0,
                borderRadius: BorderRadius.circular(20),
                child: Container(
                  padding: EdgeInsets.all(5),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Image.asset(
                        "images/metal.png",
                        height: 150,
                        width: 150,
                        fit: BoxFit.cover,
                      ),
                      Column(
                        children: [
                          SizedBox(
                            width: 20.0,
                          ),
                          GestureDetector(
                            onTap: (){
                              Navigator.push(context, MaterialPageRoute(builder: (context)=> Detais3()));
                            },
                            child: Container(
                                width: MediaQuery.of(context).size.width / 2.5,
                                child: Text(
                                  "Metal Atık Dönüşümü",
                                  style: AppWidget.semiBoldTextFeildStyle(),
                                )),
                          ),
                          SizedBox(
                            height: 5.0,
                          ),
                          Container(
                              width: MediaQuery.of(context).size.width / 2.5,
                              child: Text(
                                "",
                                style: AppWidget.LightTextFeildStyle(),
                              )),
                        ],
                      )
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget showItem() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        GestureDetector(
          onTap: () {
            Navigator.push(context, MaterialPageRoute(builder: (context)=> BusPage()));
            house = true;
            bus = false;
            plant = false;
            recycle = false;
            shop = false;
            setState(() {});
          },
          child: Material(
            elevation: 5.0,
            borderRadius: BorderRadius.circular(10),
            child: Container(
              decoration: BoxDecoration(
                  color: house ? Colors.green : Colors.white,
                  borderRadius: BorderRadius.circular(8)),
              padding: EdgeInsets.all(6),
              child: Image.asset(
                "images/house.png",
                height: 40,
                width: 40,
                fit: BoxFit.cover,
                color: house ? Colors.white : Colors.green,
              ),
            ),
          ),
        ),
        GestureDetector(
          onTap: () {
            Navigator.push(context, MaterialPageRoute(builder: (context)=> BusPage()));
            house = false;
            bus = true;
            plant = false;
            recycle = false;
            shop = false;
            setState(() {});
          },
          child: Material(
            elevation: 5.0,
            borderRadius: BorderRadius.circular(10),
            child: Container(
              decoration: BoxDecoration(
                  color: bus ? Colors.green : Colors.white,
                  borderRadius: BorderRadius.circular(8)),
              padding: EdgeInsets.all(6),
              child: Image.asset(
                "images/bus.png",
                height: 40,
                width: 40,
                fit: BoxFit.cover,
                color: bus ? Colors.white : Colors.green,
              ),
            ),
          ),
        ),
        GestureDetector(
          onTap: () {
            Navigator.push(context, MaterialPageRoute(builder: (context)=> Details7()));
            house = false;
            bus = false;
            plant = true;
            recycle = false;
            shop = false;
            setState(() {});
          },
          child: Material(
            elevation: 5.0,
            borderRadius: BorderRadius.circular(10),
            child: Container(
              decoration: BoxDecoration(
                  color: plant ? Colors.green : Colors.white,
                  borderRadius: BorderRadius.circular(8)),
              padding: EdgeInsets.all(6),
              child: Image.asset(
                "images/plant.png",
                height: 40,
                width: 40,
                fit: BoxFit.cover,
                color: plant ? Colors.white : Colors.green,
              ),
            ),
          ),
        ),
        GestureDetector(
          onTap: () {
            Navigator.push(context, MaterialPageRoute(builder: (context)=> MapsPage()));
            house = false;
            bus = false;
            plant = false;
            recycle = true;
            shop = false;
            setState(() {});
          },
          child: Material(
            elevation: 5.0,
            borderRadius: BorderRadius.circular(10),
            child: Container(
              decoration: BoxDecoration(
                  color: recycle ? Colors.green : Colors.white,
                  borderRadius: BorderRadius.circular(8)),
              padding: EdgeInsets.all(6),
              child: Image.asset(
                "images/recycle.png",
                height: 40,
                width: 40,
                fit: BoxFit.cover,
                color: recycle ? Colors.white : Colors.green,
              ),
            ),
          ),
        ),
        GestureDetector(
          onTap: () {
            Navigator.push(context, MaterialPageRoute(builder: (context)=> PageClothes()));
            house = false;
            bus = false;
            plant = false;
            recycle = false;
            shop = true;
            setState(() {});
          },
          child: Material(
            elevation: 5.0,
            borderRadius: BorderRadius.circular(10),
            child: Container(
              decoration: BoxDecoration(
                  color: shop ? Colors.green : Colors.white,
                  borderRadius: BorderRadius.circular(8)),
              padding: EdgeInsets.all(6),
              child: Image.asset(
                "images/shop.png",
                height: 40,
                width: 40,
                fit: BoxFit.cover,
                color: shop ? Colors.white : Colors.green,
              ),
            ),
          ),
        ),
      ],
    );
  }
}
