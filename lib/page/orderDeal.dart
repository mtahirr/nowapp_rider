import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class OrderDealPage extends StatefulWidget {
  @override
  _OrderDealPageState createState() => _OrderDealPageState();
}

class _OrderDealPageState extends State<OrderDealPage> {
   bool _value = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Container(
          padding: EdgeInsets.symmetric(horizontal: 10),
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            color: Colors.white,
            boxShadow: [
              BoxShadow(
                  color: Colors.black45, offset: Offset(0, 0), blurRadius: 3),
            ],
          ),
          child: Column(children: [
            SizedBox(
              height: 60,
            ),
            Card(
              elevation: 3,
            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30)),
              child: Container(
                padding: EdgeInsets.symmetric(horizontal: 30),
                  child: Column(children: [
                Row(
                  mainAxisAlignment:MainAxisAlignment.end,
                  children: [
                    Text(
                      'بيج ماك',
                      textAlign: TextAlign.justify,
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                        color: Color(0xff990000),
                      ),
                    ),
                  ],
                ),
                Image.asset('assets/deal.png',height: 180,)
              ])),
            ),
              Text(
                      'مشروبات',
                      textAlign: TextAlign.justify,
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                        color: Color(0xff990000),
                      ),
                    ),
                    SizedBox(height: 10,),
                     Row(
                       children: [
                         Row(
                           children:[
                               Text(
                          'مشروبات',
                          textAlign: TextAlign.right,
                          style: TextStyle(
                            fontSize: 13,
                            fontWeight: FontWeight.bold,
                            color: Color(0xff990000),
                          ),
                    ),
                    SizedBox(width: 10,),
                      Text(
                          'مشروبات',
                          textAlign: TextAlign.right,
                          style: TextStyle(
                            fontSize: 13,
                            fontWeight: FontWeight.bold,
                            color: Color(0xff990000),
                          ),
                    ),
                           ]
                         ),
                         Row(
                           children: [
                             Text(
                          'مشروبات',
                          textAlign: TextAlign.right,
                          style: TextStyle(
                            fontSize: 13,
                            fontWeight: FontWeight.bold,
                            color: Color(0xff990000),
                          ),
                    ),
                    SizedBox(width: 10,),
                             InkWell(
                    onTap: () {
                              setState(() {
                                _value = !_value;
                              });
                    },
                    child: Container(
                              decoration: BoxDecoration(
                                  border: Border.all(color: Color(0xff989898)),
                                  shape: BoxShape.circle,
                                  color: Colors.transparent),
                              child: _value
                                  ? Icon(
                                      Icons.check,
                                      size: 25.0,
                                      color: Color(0xff31FF00),
                                    )
                                  : Icon(
                                      Icons.check_box_outline_blank,
                                      size: 25.0,
                                      color: Colors.transparent,
                                    ),
                    ),
                  ),
                           ],
                         ),
                       ],
                     )
          ]),
        ),
      ),
    );
  }
}
