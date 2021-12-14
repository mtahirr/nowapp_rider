import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

import 'macdonald.dart';

class OrdersPage extends StatefulWidget {
  @override
  _OrdersPageState createState() => _OrdersPageState();
}

class _OrdersPageState extends State<OrdersPage> {
  bool switchControl = false;

  void toggleSwitch(bool value) {
    if (switchControl == false) {
      setState(() {
        switchControl = true;
      });
    } else {
      setState(() {
        switchControl = false;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: EdgeInsets.symmetric(horizontal: 10),
        decoration: BoxDecoration(
            image:
                DecorationImage(image: AssetImage('assets/Artboard 100.png'))),
        child: Column(children: [
          SizedBox(
            height: 30,
          ),
          Container(
            padding: EdgeInsets.symmetric(horizontal: 20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Text(
                  'الطلبات',
                  style: TextStyle(
                    fontWeight: FontWeight.w600,
                    fontSize: 18,
                  ),
                ),
                SizedBox(
                  width: 80,
                ),
                Image.asset('assets/button.png')
              ],
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 10),
            child: Row(children: [
              Text(
                'الإعدادت',
                style: TextStyle(
                  fontSize: 11,
                  color: Color(0xff990000),
                  fontWeight: FontWeight.w600,
                ),
              ),
            ]),
          ),
          InkWell(
             onTap:(){
                 Navigator.push(context, MaterialPageRoute(builder: (ctx)=>MacdonaldPage()));
             },
            child: Card(
              elevation: 3,
              shape:
                  RoundedRectangleBorder(borderRadius: BorderRadius.circular(30)),
              child: Container(
                padding: EdgeInsets.only(right: 20),
                decoration:
                    BoxDecoration(borderRadius: BorderRadius.circular(30)),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    CircleAvatar(
                      radius: 30,
                      backgroundColor: Color(0xff990000),
                      child: CircleAvatar(
                        radius: 29,
                      ),
                    ),
                    Column(children: [
                      Text(
                        'احمد',
                        style: TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                      RatingBar.builder(
                        itemSize: 20,
                        initialRating: 3,
                        minRating: 1,
                        direction: Axis.horizontal,
                        unratedColor: Colors.grey[300],
                        allowHalfRating: true,
                        itemCount: 5,
                        itemBuilder: (context, _) => Icon(
                          Icons.star,
                          color: Colors.amber,
                        ),
                        onRatingUpdate: (rating) {
                          print(rating);
                        },
                      ),
                    ]),
                    Transform.scale(
                      scale: 1.2,
                      child: Switch(
                        onChanged: toggleSwitch,
                        value: switchControl,
                        activeColor: Colors.white,
                        activeTrackColor: Color(0xff990000),
                        inactiveThumbColor: Colors.white,
                        inactiveTrackColor: Colors.grey,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
          SizedBox(
            height: 15,
          ),
          // container for detail
          Card(
            elevation: 3,
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
            child: Container(
              padding:EdgeInsets.symmetric(vertical: 10),
              decoration:
                  BoxDecoration(borderRadius: BorderRadius.circular(20)),
              child: Column(
                children: [
                  Container(
                    padding: EdgeInsets.only(left: 10, right: 20),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            Column(
                              children: [
                                Image.asset('assets/timer.png'),
                                Row(
                                  children: [
                                    Text(
                                      'دقيقة',
                                      style: TextStyle(
                                        fontSize: 11,
                                        color: Color(0xff990000),
                                        fontWeight: FontWeight.w600,
                                      ),
                                    ),
                                    SizedBox(
                                      width: 4,
                                    ),
                                    Text(
                                      '1',
                                      style: TextStyle(
                                        fontSize: 13,
                                        color: Color(0xff990000),
                                        fontWeight: FontWeight.w600,
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                            SizedBox(
                              width: 10,
                            ),
                            Container(
                              padding: EdgeInsets.symmetric(
                                  vertical: 3, horizontal: 15),
                              decoration: BoxDecoration(
                                color: Color(0xffFFBBBB),
                                borderRadius: BorderRadius.circular(5),
                                border: Border.all(
                                  color: Color(0xff990000),
                                ),
                              ),
                              child: Center(
                                child: Text(
                                  'دفع اونلاين',
                                  style: TextStyle(
                                    fontSize: 11,
                                    color: Colors.black,
                                    fontWeight: FontWeight.w600,
                                  ),
                                ),
                              ),
                            ),
                            SizedBox(
                              width: 5,
                            ),
                            Container(
                              padding: EdgeInsets.symmetric(
                                  vertical: 3, horizontal: 15),
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(5),
                                border: Border.all(
                                  color: Colors.grey,
                                ),
                              ),
                              child: Center(
                                child: Text(
                                  'دفع كاش',
                                  style: TextStyle(
                                    fontSize: 11,
                                    color: Colors.grey,
                                    fontWeight: FontWeight.w600,
                                  ),
                                ),
                              ),
                            )
                          ],
                        ),
                        Row(
                          children: [
                            Text(
                              'احمد',
                              style: TextStyle(
                                fontSize: 15,
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                            SizedBox(
                              width: 5,
                            ),
                            CircleAvatar(
                              radius: 25,
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.only(right: 70),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Text(
                          'عصير تفاح الربيع',
                          style: TextStyle(
                            fontSize: 10,
                            color: Colors.grey,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                        Text(
                          '1',
                          style: TextStyle(
                            fontSize: 10,
                            color: Colors.grey,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                        Text(
                          ' + ',
                          style: TextStyle(
                            fontSize: 10,
                            color: Colors.grey,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                        Text(
                          'ببسي',
                          style: TextStyle(
                            fontSize: 10,
                            color: Colors.grey,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                        Text(
                          '1',
                          style: TextStyle(
                            fontSize: 10,
                            color: Colors.grey,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Row(children: [
                    Column(children: [
                      Image.asset(
                        'assets/location.png',
                        height: 35,
                        color: Color(0xff990000),
                      ),
                      Text(
                        'تسليم',
                        style: TextStyle(
                          fontSize: 10,
                          color: Color(0xff990000),
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ]),
                    Icon(
                      Icons.circle,
                      size: 10,
                      color: Color(0xff990000),
                    ),
                    SizedBox(
                      width: 2,
                    ),
                    Icon(
                      Icons.circle,
                      size: 10,
                      color: Color(0xff990000),
                    ),
                    SizedBox(
                      width: 2,
                    ),
                    Icon(
                      Icons.circle,
                      size: 10,
                      color: Color(0xff990000),
                    ),
                    SizedBox(
                      width: 1,
                    ),
                    Container(
                      padding:
                          EdgeInsets.symmetric(vertical: 3, horizontal: 15),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(5),
                        border: Border.all(
                          color: Color(0xff990000),
                        ),
                      ),
                      child: Center(
                        child: Row(
                          children: [
                            Text(
                              'كم',
                              style: TextStyle(
                                fontSize: 11,
                                color: Color(0xff990000),
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                            Text(
                              '1',
                              style: TextStyle(
                                fontSize: 11,
                                color: Color(0xff990000),
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    Icon(
                      Icons.circle,
                      size: 10,
                      color: Color(0xff990000),
                    ),
                    SizedBox(
                      width: 2,
                    ),
                    Icon(
                      Icons.circle,
                      size: 10,
                      color: Color(0xff990000),
                    ),
                    SizedBox(
                      width: 2,
                    ),
                    Icon(
                      Icons.circle,
                      size: 10,
                      color: Color(0xff990000),
                    ),
                    SizedBox(
                      width: 1,
                    ),
                    Column(children: [
                      Image.asset(
                        'assets/gift.png',
                        height: 35,
                        color: Color(0xff990000),
                      ),
                      Text(
                        'استلام',
                        style: TextStyle(
                          fontSize: 10,
                          color: Color(0xff990000),
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ]),
                    Icon(
                      Icons.circle,
                      size: 10,
                      color: Color(0xff990000),
                    ),
                    SizedBox(
                      width: 2,
                    ),
                    Icon(
                      Icons.circle,
                      size: 10,
                      color: Color(0xff990000),
                    ),
                    SizedBox(
                      width: 2,
                    ),
                    Icon(
                      Icons.circle,
                      size: 10,
                      color: Color(0xff990000),
                    ),
                    SizedBox(
                      width: 1,
                    ),
                    Container(
                      padding:
                          EdgeInsets.symmetric(vertical: 3, horizontal: 15),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(5),
                        border: Border.all(
                          color: Color(0xff990000),
                        ),
                      ),
                      child: Center(
                        child: Row(
                          children: [
                            Text(
                              'كم',
                              style: TextStyle(
                                fontSize: 11,
                                color: Color(0xff990000),
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                            Text(
                              '1',
                              style: TextStyle(
                                fontSize: 11,
                                color: Color(0xff990000),
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    Icon(
                      Icons.circle,
                      size: 10,
                      color: Color(0xff990000),
                    ),
                    SizedBox(
                      width: 2,
                    ),
                    Icon(
                      Icons.circle,
                      size: 10,
                      color: Color(0xff990000),
                    ),
                    SizedBox(
                      width: 2,
                    ),
                    CircleAvatar(
                      radius: 12,
                      backgroundColor: Color(0xffFFBBBB),
                      child: CircleAvatar(
                        radius: 5,
                        backgroundColor: Color(0xff990000),
                      ),
                    ),
                    SizedBox(
                      width: 4,
                    ),
                    Column(children: [
                      Image.asset(
                        'assets/person.png',
                        height: 20,
                        color: Color(0xff990000),
                      ),
                      SizedBox(
                        height: 6,
                      ),
                      Text(
                        'أنت',
                        style: TextStyle(
                          fontSize: 10,
                          color: Color(0xff990000),
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ])
                  ])
                ],
              ),
            ),
          )
        ]),
      ),
    );
  }
}
