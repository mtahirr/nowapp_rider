import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:now_app/page/SendMoney.dart';

class AddCartPage extends StatefulWidget {
  @override
  _AddCartPageState createState() => _AddCartPageState();
}

class _AddCartPageState extends State<AddCartPage> {
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
                children: [Image.asset('assets/button.png')],
              ),
            ),
            SizedBox(
              height: 6,
            ),
            Stack(
              clipBehavior: Clip.none,
              children: [
                Card(
                  elevation: 3,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20)),
                  child: Container(
                    padding: EdgeInsets.only(top: 220,bottom: 40),
                    child: Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              'ر.س',
                              textAlign: TextAlign.end,
                              style: TextStyle(
                                fontSize: 15,
                                color: Color(0xff949494),
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            Text(
                              ' 22 : ',
                              textAlign: TextAlign.end,
                              style: TextStyle(
                                fontSize: 15,
                                color: Color(0xff949494),
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            Text(
                              ' التوصيل',
                              textAlign: TextAlign.right,
                              style: TextStyle(
                                fontSize: 15,
                                color: Color(0xff949494),
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              'ر.س',
                              textAlign: TextAlign.end,
                              style: TextStyle(
                                fontSize: 15,
                                color: Color(0xff949494),
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            Text(
                              ' 22 : ',
                              textAlign: TextAlign.end,
                              style: TextStyle(
                                fontSize: 15,
                                color: Color(0xff949494),
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            Text(
                              ' المجموع',
                              textAlign: TextAlign.right,
                              style: TextStyle(
                                fontSize: 15,
                                color: Color(0xff949494),
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
                Card(
                  elevation: 3,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20)),
                  child: Container(
                    padding: EdgeInsets.only(
                        right: 10, top: 15, bottom: 15, left: 10),
                    decoration:
                        BoxDecoration(borderRadius: BorderRadius.circular(30)),
                    child: Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
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
                            Row(
                              children: [
                                Text(
                                  '4.5',
                                  style: TextStyle(
                                    fontSize: 15,
                                    color: Color(0xff878787),
                                    fontWeight: FontWeight.w600,
                                  ),
                                ),
                                RatingBar.builder(
                                  itemSize: 18,
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
                                SizedBox(
                                  width: 5,
                                ),
                                Text(
                                  'احمد',
                                  style: TextStyle(
                                    fontSize: 15,
                                    fontWeight: FontWeight.w600,
                                  ),
                                ),
                                SizedBox(
                                  width: 10,
                                ),
                                CircleAvatar(
                                  radius: 26,
                                  backgroundColor: Color(0xff990000),
                                  child: CircleAvatar(
                                    radius: 25,
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 5,
                        ),
                        Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                'احمد',
                                style: TextStyle(
                                  fontSize: 15,
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                              SizedBox(
                                width: 10,
                              ),
                              CircleAvatar(
                                radius: 26,
                                backgroundColor: Color(0xff990000),
                                child: CircleAvatar(
                                  radius: 25,
                                ),
                              ),
                            ]),
                        Column(
                          children: [
                            Container(
                              padding: EdgeInsets.symmetric(horizontal: 20),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Image.asset('assets/gift.png'),
                                  Text(
                                    'المسافة بين الاستلام والتسليم ',
                                    style: TextStyle(
                                      fontSize: 11,
                                      color: Color(0xff990000),
                                      fontWeight: FontWeight.w600,
                                    ),
                                  ),
                                  Image.asset('assets/location.png'),
                                ],
                              ),
                            ),
                            Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Container(
                                    padding: EdgeInsets.symmetric(
                                        vertical: 3, horizontal: 10),
                                    decoration: BoxDecoration(
                                      color: Color(0xffFFBBBB),
                                      borderRadius: BorderRadius.circular(5),
                                      border: Border.all(
                                        color: Color(0xff990000),
                                      ),
                                    ),
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Image.asset('assets/small_send.png'),
                                        SizedBox(
                                          width: 5,
                                        ),
                                        Text(
                                          'دفع اونلاين',
                                          style: TextStyle(
                                            fontSize: 11,
                                            color: Colors.black,
                                            fontWeight: FontWeight.w600,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                  SizedBox(
                                    width: 7,
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
                                    width: 5,
                                  ),
                                  Container(
                                    padding: EdgeInsets.symmetric(
                                        vertical: 3, horizontal: 20),
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
                                  SizedBox(
                                    width: 5,
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
                                    width: 7,
                                  ),
                                  Container(
                                    padding: EdgeInsets.symmetric(
                                        vertical: 3, horizontal: 10),
                                    decoration: BoxDecoration(
                                      color: Color(0xffFFBBBB),
                                      borderRadius: BorderRadius.circular(5),
                                      border: Border.all(
                                        color: Color(0xff990000),
                                      ),
                                    ),
                                    child: Row(
                                      children: [
                                        Image.asset('assets/small_send.png'),
                                        SizedBox(
                                          width: 5,
                                        ),
                                        Text(
                                          'دفع اونلاين',
                                          style: TextStyle(
                                            fontSize: 11,
                                            color: Colors.black,
                                            fontWeight: FontWeight.w600,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ]),
                          ],
                        )
                      ],
                    ),
                  ),
                ),
                 Positioned(
                   left:0,
                   right:0,
                  bottom: -20,
                   child: Center(
                     child: InkWell(
                       onTap: (){
                          Navigator.push(context, MaterialPageRoute(builder: (ctx)=>SendMoneyPage()));
                       },
                       child: Container(
                         margin: EdgeInsets.symmetric(horizontal: 100),
                           padding:
                               EdgeInsets.only( bottom: 15, top: 10),
                           decoration: BoxDecoration(
                               image: DecorationImage(
                                   image: AssetImage('assets/button1.png'),
                                   fit: BoxFit.fill)),
                           child: Row(
                             mainAxisAlignment: MainAxisAlignment.center,
                             children: [
                               Image.asset('assets/msg.png'),
                               SizedBox(width: 10,),
                               Text(
                                 'تواصل مع العميل',
                                 style: TextStyle(
                                   color: Colors.white,
                                 ),
                               ),
                             ],
                           )),
                     ),
                   ),
                 ),
              ],
            ),
            SizedBox(
              height: 15,
            ),
          ],
        ),
      ),
    );
  }
}
