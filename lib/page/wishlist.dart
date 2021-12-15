import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:now_app/page/orderDeal.dart';

class WishListPage extends StatefulWidget {
  @override
  _WishListPageState createState() => _WishListPageState();
}

class _WishListPageState extends State<WishListPage> {
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
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  CircleAvatar(
                    radius: 25,
                    backgroundColor: Colors.white,
                    backgroundImage: AssetImage(
                      'assets/mac.png',
                    ),
                  ),
                  Text("تعديل خاص الكاشير",
                      style: TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.bold,
                      )),
                  Image.asset('assets/button.png')
                ],
              ),
            ),
            SizedBox(
              height: 80,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Text(
                  'قائمة الطلبات',
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
            Card(
              elevation: 3,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.only(
                bottomRight: Radius.circular(30),
                topLeft: Radius.circular(30),
                topRight: Radius.circular(30),
              )),
              child: Container(
                padding: EdgeInsets.symmetric(vertical: 10),
                decoration: BoxDecoration(
                    border: Border.all(
                      color: Color(0xff990000),
                    ),
                    borderRadius: BorderRadius.only(
                      bottomRight: Radius.circular(30),
                      topLeft: Radius.circular(30),
                      topRight: Radius.circular(30),
                    )),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Expanded(
                      flex: 5,
                      child: Container(
                        padding: EdgeInsets.only(left: 15),
                        child: Column(
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Row(
                                  children: [
                                    Text(
                                      '70',
                                      style: TextStyle(
                                        fontSize: 12,
                                        color: Color(0xff777576),
                                      ),
                                    ),
                                    Text(
                                      'ريال',
                                      textAlign: TextAlign.justify,
                                      style: TextStyle(
                                        fontSize: 12,
                                        color: Color(0xff777576),
                                      ),
                                    ),
                                  ],
                                ),
                                Text(
                                  'الفطور',
                                  style: TextStyle(
                                    fontSize: 16,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ],
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  'تعديل',
                                  textAlign: TextAlign.justify,
                                  style: TextStyle(
                                    fontSize: 12,
                                    color: Color(0xff990000),
                                  ),
                                ),
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Container(
                                      // color: Colors.black45,
                                      // width: MediaQuery.of(context).size.width * 0.3,

                                      child: Row(
                                        children: [
                                          Container(
                                            // width: MediaQuery.of(context).size .width * 0.055,
                                            // height: MediaQuery.of(context).size .height *0.03,
                                            decoration: BoxDecoration(
                                              border: Border.all(
                                                color: Colors.grey[200],
                                              ),
                                              borderRadius:
                                                  BorderRadius.circular(5),
                                            ),
                                            child: Icon(
                                              Icons.remove,
                                              size: 20,
                                              color: Color(0xff990000),
                                            ),
                                          ),
                                          SizedBox(
                                            width: MediaQuery.of(context)
                                                    .size
                                                    .width *
                                                0.035,
                                          ),
                                          Text(
                                            '1',
                                            style: TextStyle(
                                                color: Color(0xff990000),
                                                fontSize: 17),
                                          ),
                                          SizedBox(
                                            width: MediaQuery.of(context)
                                                    .size
                                                    .width *
                                                0.035,
                                          ),
                                          Container(
                                            // width: MediaQuery.of(context).size .width * 0.055,
                                            // height: MediaQuery.of(context).size .height *0.03,
                                            decoration: BoxDecoration(
                                              borderRadius:
                                                  BorderRadius.circular(5),
                                              border: Border.all(
                                                color: Colors.grey[200],
                                              ),
                                            ),
                                            child: Icon(
                                              Icons.add,
                                              size: 20,
                                              color: Color(0xff990000),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                    Expanded(
                        flex: 2,
                        child:
                            Container(child: Image.asset('assets/burger.png'))),
                  ],
                ),
              ),
            ),
            Spacer(),
            InkWell(
               onTap: () {
                Navigator.push(
                    context, MaterialPageRoute(builder: (ctx) => OrderDealPage()));
              },
              child: Container(
                margin: EdgeInsets.symmetric(horizontal: 130),
                  padding: EdgeInsets.symmetric(vertical: 20,),
                  decoration: BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage('assets/button2.png'),
                        fit: BoxFit.fill),
                  ),
                  child: Column(children: [
                    Text(
                      'المجموع',
                      style: TextStyle(color: Colors.white, fontSize: 13),
                    ),
                      Text(
                      '=',
                      style: TextStyle(color: Colors.white, fontSize: 13),
                    ),
                     Row(
                       mainAxisAlignment: MainAxisAlignment.center,
                       children: [
            
                         Text(
                          'ريال',
                          textAlign: TextAlign.right,
                          style: TextStyle(color: Colors.white, fontSize: 13),
                    ),
                     Text(
                      '20',
                      style: TextStyle(color: Colors.white, fontSize: 13),
                    ),
                       ],
                     ),
                  ])),
            ),
                SizedBox(height: 30,)
          ],
        ),
      ),
    );
  }
}
