import 'package:flutter/material.dart';
import 'package:recycledemo/pages/details4.dart';
import 'package:recycledemo/pages/details5.dart';
import 'package:recycledemo/pages/details6.dart';

import '../widget/widget_support.dart';
import 'details.dart';
import 'detais2.dart';
import 'detais3.dart';


class PageClothes extends StatefulWidget {
  const PageClothes({super.key});

  @override
  State<PageClothes> createState() => _PageClothesState();
}

class _PageClothesState extends State<PageClothes> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        margin: const EdgeInsets.only(top: 50.0, left: 20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            GestureDetector(
              onTap: () {
                Navigator.pop(context);
              },
              child: const Icon(
                Icons.arrow_back_ios_new_outlined,
                color: Colors.brown,
              ),
            ),
            const SizedBox(height: 20.0),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text("Merhaba İrem,", style: AppWidget.boldTextFeildStyle()),
                Container(
                  margin: const EdgeInsets.only(right: 20.0),
                  padding: const EdgeInsets.all(3),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(8),
                  ),
                  child: const Icon(
                    Icons.account_circle_outlined,
                    color: Colors.brown,
                  ),
                ),
              ],
            ),
            const SizedBox(height: 20.0),
            Text("Geri Dönüşebilir Mağaza", style: AppWidget.HeadlineTextFeildStyle()),
            Text("Hoşgeldiniz", style: AppWidget.LightTextFeildStyle()),
            const SizedBox(height: 20.0),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  GestureDetector(
                    onTap: () {
                      Navigator.push(context, MaterialPageRoute(builder: (context) => Details4()));
                    },
                    child: Container(
                      margin: const EdgeInsets.all(4),
                      child: Material(
                        elevation: 5.0,
                        borderRadius: BorderRadius.circular(20),
                        child: Container(
                          padding: const EdgeInsets.all(12),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Image.asset(
                                "images/shirts.png",
                                height: 150,
                                width: 150,
                                fit: BoxFit.cover,
                              ),
                              Text("Kıyafetlerinizi Bağışlayın", style: AppWidget.semiBoldTextFeildStyle()),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(width: 20.0),
                  GestureDetector(
                    onTap: () {
                      Navigator.push(context, MaterialPageRoute(builder: (context) => Details5()));
                    },
                    child: Container(
                      margin: const EdgeInsets.all(4),
                      child: Material(
                        elevation: 5.0,
                        borderRadius: BorderRadius.circular(20),
                        child: Container(
                          padding: const EdgeInsets.all(12),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Image.asset(
                                "images/second-hand.png",
                                height: 150,
                                width: 150,
                                fit: BoxFit.cover,
                              ),
                              Text("Kıyafetlerini Dönüştür", style: AppWidget.semiBoldTextFeildStyle()),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 50.0),
            Container(
              margin: const EdgeInsets.only(right: 10.0),
              child: Material(
                elevation: 5.0,
                borderRadius: BorderRadius.circular(20),
                child: Container(
                  padding: const EdgeInsets.all(5),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Image.asset(
                        "images/clothes.png",
                        height: 150,
                        width: 150,
                        fit: BoxFit.cover,
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          SizedBox(
                            width: MediaQuery.of(context).size.width / 2.5,
                            child: GestureDetector(
                              onTap: () {
                                Navigator.push(context, MaterialPageRoute(builder: (context) => Details6()));
                              },
                              child: Text(
                                "Giysileri Yenileme/Dönüştürme Önemi",
                                style: AppWidget.semiBoldTextFeildStyle(),
                              ),
                            ),
                          ),
                          const SizedBox(height: 5.0),
                          Text("", style: AppWidget.LightTextFeildStyle()),
                        ],
                      ),
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
}