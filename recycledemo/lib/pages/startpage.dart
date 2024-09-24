import 'package:flutter/material.dart';

import '../widget/widget_support.dart';

class BusPage extends StatefulWidget {
  const BusPage({super.key});

  @override
  State<BusPage> createState() => _BusPageState();
}

class _BusPageState extends State<BusPage> {
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
              'images/kupon.png',
              width: MediaQuery
                  .of(context)
                  .size
                  .width,
              height: MediaQuery
                  .of(context)
                  .size
                  .height / 1.5,
              fit: BoxFit.fill,
            ),

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
