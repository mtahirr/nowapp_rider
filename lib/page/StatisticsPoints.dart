import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:now_app/page/paymentMethod.dart';

class StatisticsPoints extends StatefulWidget {
  @override
  _StatisticsPointsState createState() => _StatisticsPointsState();
}

class _StatisticsPointsState extends State<StatisticsPoints> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
      padding: EdgeInsets.symmetric(horizontal: 10),
      height: MediaQuery.of(context).size.height,
      width: MediaQuery.of(context).size.width,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        color: Colors.white,
        image: DecorationImage(
          image: AssetImage('assets/Artboard.png'),
        ),
      ),
      child: Column(
        children: [
          SizedBox(
            height: 30,
          ),
          Container(
            padding: EdgeInsets.symmetric(horizontal: 20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [Image.asset('assets/button.png')],
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Column(
            children: [
              Image.asset('assets/statistics.png'),
              Text("الاحصائيات - النقاط",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Color(0xff990000),
                    fontSize: 15,
                  )),
            ],
          ),
          SizedBox(
            height: 40,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Text("عدد زيارة عملاء بطاقتي 75 زائر",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Color(0xff990000),
                    fontSize: 15,
                  )),
            ],
          ),
          SizedBox(
            height: 20,
          ),
          Column(
            children: [
              Text("قارئ الباركود",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Color(0xff990000),
                    fontSize: 13,
                  )),
              Image.asset('assets/scanner.png'),
            ],
          ),
            SizedBox(
            height: 40,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Text("رصيد النقاط : 0 نقطة",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Color(0xff990000),
                    fontSize: 15,
                  )),
            ],
          ),
           SizedBox(
            height: 20,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
                 InkWell(
                    onTap: () {
                Navigator.push(
                    context, MaterialPageRoute(builder: (ctx) => PayMethodPage()));
              },
                   child: Container(
                    padding:
                        EdgeInsets.only(right: 45, left: 45, bottom: 15, top: 10),
                    decoration: BoxDecoration(
                        image: DecorationImage(
                      image: AssetImage('assets/button1.png'),
                      fit: BoxFit.fill)),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                    'سدد',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 15,
                      fontWeight:FontWeight.bold,
                    ),
                        ),
                      ],
                    )),
                 ),
              Text("رصيد المبغ  : 1 نقطة = 1 ريال",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Color(0xff990000),
                    fontSize: 15,
                  )),
            ],
          ),
        ],
      ),
    ));
  }
}
