
import 'package:flutter/material.dart';

import '../widget/widget_support.dart';
import 'login.dart';

class SignUp extends StatefulWidget {
  const SignUp({super.key});

  @override
  State<SignUp> createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Stack(
          children: [
            Container(
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height/2.5,
              decoration: BoxDecoration(
                  gradient: LinearGradient(
                      begin: Alignment.topLeft,
                      end: Alignment.bottomRight,
                      colors: [
                        Color(0xFF1B5E20),
                        Color(0XFF388E3C),
                      ])),
            ),
            Container(
              margin: EdgeInsets.only(top: MediaQuery.of(context).size.height/3),
              height: MediaQuery.of(context).size.height/1.5,
              width: MediaQuery.of(context).size.width,
              decoration: BoxDecoration(color: Colors.white, borderRadius: BorderRadius.only(topLeft: Radius.circular(40), topRight: Radius.circular(40))),
              child: Text(""),
            ),
            Container(
              margin: EdgeInsets.only(top: 20.0, left: 20.0, right: 20.0),
              child: Column(children: [
                Center(child: Image.asset("images/logo.png", width: MediaQuery.of(context).size.width/1.5, fit: BoxFit.cover,)),
                SizedBox(height: 20.0,),
                Material(
                  elevation: 5.0,
                  borderRadius: BorderRadius.circular(20),
                  child: Container(
                    padding: EdgeInsets.only(left: 20.0, right: 20.0),
                    width: MediaQuery.of(context).size.width,
                    height: MediaQuery.of(context).size.height/1.9,
                    decoration: BoxDecoration(color: Colors.white30, borderRadius: BorderRadius.circular(20)),
                    child: Column(children: [
                      SizedBox(height: 30.0,),
                      Text(
                        "Kayıt Ol",
                        style: AppWidget.HeadlineTextFeildStyle(),
                      ),
                      SizedBox(
                        height: 30.0,
                      ),
                      TextField(
                        decoration: InputDecoration(
                            hintText: 'İsim',
                            hintStyle: AppWidget.semiBoldTextFeildStyle(),
                            prefixIcon: Icon(Icons.person_outline)),
                      ),

                      SizedBox(
                        height: 30.0,
                      ),
                      TextField(
                        decoration: InputDecoration(
                            hintText: 'Email',
                            hintStyle: AppWidget.semiBoldTextFeildStyle(),
                            prefixIcon: Icon(Icons.email_outlined)),
                      ),

                      SizedBox(
                        height: 30.0,
                      ),
                      TextField(
                        obscureText: true,
                        decoration: InputDecoration(
                            hintText: 'Şifre',
                            hintStyle: AppWidget.semiBoldTextFeildStyle(),
                            prefixIcon: Icon(Icons.password_outlined)),
                      ),

                      SizedBox(height: 30.0,),
                      Material(
                        elevation: 5.0,
                        borderRadius: BorderRadius.circular(20),
                        child: Container(
                          padding: EdgeInsets.symmetric(vertical: 8.0),
                          width: 200,
                          decoration: BoxDecoration(color: Color(0xFF388E3C), borderRadius: BorderRadius.circular(20)),
                          child: Center(child: Text(
                            "KAYIT OL",
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 18.0,
                                fontFamily: 'Poppins1',
                                fontWeight: FontWeight.bold),)),
                        ),
                      ),
                    ],),
                  ),
                ),
                SizedBox(height: 50.0,),
                GestureDetector(
                  onTap: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context)=> LogIn()));
                  },
                    child: Text("Hesabınız var mı? Giriş Yap." , style: AppWidget.semiBoldTextFeildStyle())),
              ],),
            )
          ],
        ),
      ),
    );
  }
}
