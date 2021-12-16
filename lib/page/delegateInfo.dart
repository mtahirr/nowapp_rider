import 'package:flutter/material.dart';
import 'package:now_app/page/StatisticsPoints.dart';

class DelegateInfo extends StatefulWidget {
  @override
  _DelegateInfoState createState() => _DelegateInfoState();
}

class _DelegateInfoState extends State<DelegateInfo> {
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
          image: AssetImage('assets/Artboard 100.png'),
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
              children: [
                Row(
                  children: [
                    Image.asset('assets/account.png'),
                    Text("معلومات المندوب",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Color(0xff990000),
                          fontSize: 15,
                        )),
                  ],
                ),
                SizedBox(
                  width: 70,
                ),
                Image.asset('assets/button.png')
              ],
            ),
          ),
          SizedBox(
            height: 20,
          ),
          InkWell(
            onTap: () {
              Navigator.push(
                  context, MaterialPageRoute(builder: (ctx) => StatisticsPoints()));
            },
            child: Card(
              margin: EdgeInsets.only(top: 5),
              elevation: 3,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(15)),
              child: Container(
                padding: EdgeInsets.symmetric(vertical: 12, horizontal: 15),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Text(
                      'محمد',
                      textAlign: TextAlign.right,
                      style: TextStyle(
                        fontSize: 14,
                        color: Color(0xff990000),
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    SizedBox(
                      width: 60,
                    ),
                    Text(
                      'اسم المندوب',
                      textAlign: TextAlign.right,
                      style: TextStyle(
                        fontSize: 16,
                        color: Color(0xff979797),
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
          InkWell(
            onTap: () {
              // Navigator.push(
              //     context, MaterialPageRoute(builder: (ctx) => HomePage()));
            },
            child: Card(
              margin: EdgeInsets.only(top: 5),
              elevation: 3,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(15)),
              child: Container(
                padding: EdgeInsets.symmetric(vertical: 12, horizontal: 15),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Image.asset('assets/NoPath - Copy (2).png',  color: Color(0xff990000),),
                    Text(
                      '+966 ********',
                      textAlign: TextAlign.right,
                      style: TextStyle(
                        fontSize: 14,
                        color: Color(0xff990000),
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                   
                    Text(
                      'رقم الجوال',
                      textAlign: TextAlign.right,
                      style: TextStyle(
                        fontSize: 16,
                        color: Color(0xff979797),
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    ));
  }
}
