import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

class ArzoAlMadib extends StatefulWidget {
  @override
  _ArzoAlMadibState createState() => _ArzoAlMadibState();
}

class _ArzoAlMadibState extends State<ArzoAlMadib> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
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
                    Column(
                      children: [
                        Text(
                          "عروض المناديب",
                          style: TextStyle(
                            fontSize: 18,
                          ),
                        ),
                        Text("( التوصيل )",
                            style: TextStyle(
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
              Expanded(
                child: Container(
                  height: MediaQuery.of(context).size.height,
                  width: MediaQuery.of(context).size.width,
                  padding: EdgeInsets.symmetric(horizontal: 10),
                  child: SingleChildScrollView(
                    child: Column(
                      children: [
                        Card(
                          elevation: 8,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(30),
                          ),
                          child: Container(
                            height: MediaQuery.of(context).size.height * 0.24,
                            width: MediaQuery.of(context).size.width,
                            padding: EdgeInsets.symmetric(
                                horizontal: 15, vertical: 5),
                            decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(30)),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Row(
                                      children: [
                                        Column(
                                          children: [
                                            Card(
                                              elevation: 8,
                                              shape: RoundedRectangleBorder(
                                                borderRadius:
                                                    BorderRadius.circular(20),
                                              ),
                                              child: Container(
                                                padding: EdgeInsets.symmetric(
                                                    horizontal: 22),
                                                // width: MediaQuery.of(context)
                                                // .size
                                                // .width *
                                                // 0.3,
                                                // height: MediaQuery.of(context).size.height *0.04,
                                                decoration: BoxDecoration(
                                                  borderRadius:
                                                      BorderRadius.circular(20),
                                                  color: Color(0xff990000),
                                                ),
                                                child: Center(
                                                  child: Text(
                                                    "قبول",
                                                    style: TextStyle(
                                                      color: Colors.white,
                                                      fontSize: 15,
                                                    ),
                                                  ),
                                                ),
                                              ),
                                            ),
                                            Card(
                                              elevation: 8,
                                              shape: RoundedRectangleBorder(
                                                borderRadius:
                                                    BorderRadius.circular(20),
                                              ),
                                              child: Container(
                                                padding: EdgeInsets.symmetric(
                                                    horizontal: 12),
                                                // width: MediaQuery.of(context).size.width *0.3,
                                                // height: MediaQuery.of(context).size.height *0.04,
                                                decoration: BoxDecoration(
                                                  borderRadius:
                                                      BorderRadius.circular(20),
                                                  color: Color(0xff990000),
                                                ),
                                                child: Text(
                                                  "عرض اقل",
                                                  style: TextStyle(
                                                    color: Colors.white,
                                                    fontSize: 15,
                                                  ),
                                                ),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ],
                                    ),
                                    Row(
                                      children: [
                                        Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.end,
                                          children: [
                                            Text("محمد", style: TextStyle()),
                                            Row(
                                              children: [
                                                Text(
                                                  "4.6",
                                                  style: TextStyle(
                                                    color: Colors.grey,
                                                  ),
                                                ),
                                                RatingBar.builder(
                                                  initialRating: 3,
                                                  minRating: 1,
                                                  direction: Axis.horizontal,
                                                  allowHalfRating: true,
                                                  itemCount: 5,
                                                  itemSize: 20,
                                                  itemBuilder: (context, _) =>
                                                      Icon(
                                                    Icons.star,
                                                    color: Colors.amber,
                                                  ),
                                                  onRatingUpdate: (rating) {
                                                    print(rating);
                                                  },
                                                ),
                                              ],
                                            )
                                          ],
                                        ),
                                        SizedBox(
                                            width: MediaQuery.of(context)
                                                    .size
                                                    .width *
                                                0.02),
                                        CircleAvatar(
                                          // backgroundColor: Colors.red,
                                          // backgroundImage: AssetImage(
                                          //     'assets/profile_thum@2x.png'),
                                          radius: 30,
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceEvenly,
                                  children: [
                                    Column(
                                      children: [
                                        Text("وقت التوصيل", style: TextStyle()),
                                        Text(
                                          "ساعة واحدة",
                                          style: TextStyle(
                                            color: Colors.grey[400],
                                          ),
                                        )
                                      ],
                                    ),
                                    Container(
                                      height: 50,
                                      child: VerticalDivider(
                                        thickness: 1,
                                        color: Color(0xff990000),
                                      ),
                                    ),
                                    Column(
                                      children: [
                                        Text(
                                          "تكلفة التوصيل",
                                        ),
                                        Text.rich(
                                          TextSpan(
                                            children: [
                                              TextSpan(
                                                text: '15 ',
                                                style: TextStyle(
                                                  color: Colors.grey[400],
                                                ),
                                              ),
                                              TextSpan(
                                                text: 'ريال',
                                                style: TextStyle(
                                                  color: Colors.grey[400],
                                                ),
                                              ),
                                            ],
                                          ),
                                        )
                                      ],
                                    ),
                                    Container(
                                      height: 50,
                                      child: VerticalDivider(
                                        thickness: 1,
                                        color: Color(0xff990000),
                                      ),
                                    ),
                                    Column(
                                      children: [
                                        Text(
                                          "يبعد",
                                          style: TextStyle(),
                                        ),
                                        Text(
                                          "5 كم",
                                          style: TextStyle(
                                            color: Colors.grey[400],
                                          ),
                                        )
                                      ],
                                    ),
                                  ],
                                )
                              ],
                            ),
                          ),
                        ),
                        Image.asset(
                          'assets/Group 258.png',
                        )
                        // Card(
                        //   elevation: 8,
                        //   shape: RoundedRectangleBorder(
                        //     borderRadius: BorderRadius.circular(15),
                        //   ),
                        //   child: InkWell(
                        //     onTap: () {
                        //       // Navigator.push(context, MaterialPageRoute(builder: (context)=> NineteenScreen()));
                        //     },
                        //     child: Container(
                        //       width: MediaQuery.of(context).size.width * 0.4,
                        //       height: MediaQuery.of(context).size.height * 0.05,
                        //       decoration: BoxDecoration(
                        //         borderRadius: BorderRadius.circular(10),
                        //         color: Colors.white,
                        //       ),
                        //       child: Center(
                        //         child: Text(
                        //           "الغاء الطلب",
                        //           style: TextStyle(
                        //             color: Colors.red,
                        //             fontFamily: 'JF Flat',
                        //             fontSize: 20,
                        //           ),
                        //         ),
                        //       ),
                        //     ),
                        //   ),
                        // ),
                      ],
                    ),
                  ),
                ),
              )
            ],
          )),
    );
  }
}
