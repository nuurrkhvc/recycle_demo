import 'package:flutter/material.dart';

class Order extends StatefulWidget {
  const Order({super.key});

  @override
  State<Order> createState() => _OrderState();
}

class _OrderState extends State<Order> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Column(
          children: [
            Stack(
              children: [
                Container(
                  padding: EdgeInsets.only(top: 45.0, left: 20.0, right: 20.0),
                  height: MediaQuery.of(context).size.height/4.3,
                  width: MediaQuery.of(context).size.width,
                  decoration: BoxDecoration(
                    color: Colors.green,
                    borderRadius: BorderRadius.vertical(
                      bottom:Radius.elliptical(MediaQuery.of(context).size.width, 105.0)
                    ),
                  ),
                ),
                Center(
                  child: Container(
                    margin: EdgeInsets.only(top: MediaQuery.of(context).size.height/6.5),
                    child: Material(
                      elevation: 10.0,
                      borderRadius: BorderRadius.circular(60),
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(60),
                        child: Image.asset("images/world-news.png", height: 120, fit: BoxFit.cover,),
                      ),
                    )
                  ),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
