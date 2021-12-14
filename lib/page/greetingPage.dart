import 'package:flutter/material.dart';

import 'loginPage.dart';

class GreetingPage extends StatefulWidget {
  @override
  _GreetingPageState createState() => _GreetingPageState();
}

class _GreetingPageState extends State<GreetingPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        decoration: BoxDecoration(
            image: DecorationImage(image: AssetImage('assets/four.png'))),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            InkWell(
              onTap: (){
                Navigator.pushReplacement(context, MaterialPageRoute(builder: (ctx)=>LoginPage()));
              },
              child: Container(
                padding: EdgeInsets.symmetric(vertical: 10),
                child: Image.asset('assets/Group 552.png'),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
