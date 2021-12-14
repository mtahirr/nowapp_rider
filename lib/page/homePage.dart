import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:now_app/page/typesBurger.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
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
        child: Column(children: [
          SizedBox(
            height: 30,
          ),
          Container(
            decoration: BoxDecoration(
              shape: BoxShape.circle,
            ),
            child: Image.asset('assets/mac.png'),
          ),
          Card(
            margin: EdgeInsets.symmetric(horizontal: 100),
            elevation: 8,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(20),
            ),
            child: Container(
              padding: EdgeInsets.symmetric(vertical: 5),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: Color(0xffEC0000),
              ),
              child: Center(
                child: Text(
                  "طلب العميل",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 15,
                  ),
                ),
              ),
            ),
          ),
          SizedBox(
            height: MediaQuery.of(context).size.height * 0.01,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Card(
                elevation: 5,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Container(
                  padding: EdgeInsets.symmetric(horizontal: 5, vertical: 5),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.white,
                  ),
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Text(
                            "الرياض . شارع الملك عبدالعزيز",
                            style: TextStyle(
                              
                              fontSize: 12,
                            ),
                          ),
                          Icon(
                            Icons.location_on,
                            color: Color(0xffEC0000),
                          ),
                        ],
                      ),
                      Row(
                        children: [
                          Row(
                            children: [
                              Icon(
                                Icons.arrow_back_ios_new_rounded,
                                color: Colors.red,
                                size: 12,
                              ),
                              Text(
                                "خرائط",
                                style: TextStyle(
                                  color: Colors.red,
                                  fontSize: 13,
                                ),
                              ),
                            ],
                          ),
                          SizedBox(
                            width: 25,
                          ),
                          Text(
                            "يبعد: 7.8 كم",
                            style: TextStyle(
                              color: Color(0xff878787),
                              fontWeight: FontWeight.bold,
                              fontSize: 13,
                            ),
                          ),
                        ],
                      )
                    ],
                  ),
                ),
              ),
              Card(
                elevation: 5,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Container(
                    padding: EdgeInsets.symmetric(horizontal: 5, vertical: 5),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Colors.white,
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        Row(
                          children: [
                            Text(
                              "تقييم المستخدمين",
                              style: TextStyle(
                                
                                fontSize: 15,
                              ),
                            ),
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Row(
                              children: [
                                Icon(
                                  Icons.arrow_back_ios_new_rounded,
                                  color: Colors.red,
                                  size: 12,
                                ),
                                Text(
                                  "اراءهم",
                                  style: TextStyle(
                                    color: Colors.red,
                                    fontSize: 12,
                                  ),
                                ),
                              ],
                            ),
                            SizedBox(
                              width: 15,
                            ),
                            Row(
                              children: [
                                Text(
                                  "4.0",
                                  style: TextStyle(
                                    color: Color(0xff878787),
                                    fontWeight: FontWeight.bold,
                                    fontSize: 13,
                                  ),
                                ),
                                RatingBar.builder(
                                  itemSize: 13,
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
                              ],
                            ),
                          ],
                        )
                      ],
                    )),
              ),
            ],
          ),
          SizedBox(height: 5,),
          Card(
            margin: EdgeInsets.symmetric(horizontal: 80),
            elevation: 5,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10),
            ),
            child: Container(
                padding: EdgeInsets.symmetric(horizontal: 10,vertical: 3),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Colors.white,
                ),
                child: Column(
                 
                  children: [
                    Row(
                      mainAxisAlignment:MainAxisAlignment.end,
                      children: [
                        Text(
                          "اوقات العمل",
                          style: TextStyle(
                            color: Colors.grey,
                            fontSize: 15,
                          ),
                        ),
                        SizedBox(width: 15),
                        Icon(
                          Icons.timer_rounded,
                          color: Colors.grey,
                        ),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                      children: [
                        Icon(
                          Icons.arrow_back_ios_new_rounded,
                          color: Colors.red,
                          size: 12,
                        ),
                        Text(
                          "مفتوح",
                          style: TextStyle(
                            color: Colors.red,
                            fontSize: 12,
                          ),
                        ),
                      ],
                    ),
                        Row(
                          children: [
                            Text(
                              "ًمن6:00 ص الى 12:00  ",
                              style: TextStyle(
                                fontSize: 11,
                                color: Colors.grey,
                              ),
                            ),
                          ],
                        ),
                      ],
                    )
                  ],
                )),
          ),
          SizedBox(
            height: MediaQuery.of(context).size.height * 0.03,
          ),
          Card(
            margin:EdgeInsets.symmetric(horizontal:140),
            elevation: 8,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(20),
            ),
            child: Container(
            padding: EdgeInsets.symmetric(vertical: 3,horizontal:10),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
              ),
              child: Center(
                child: Text(
                  "القائمة",
                  style: TextStyle(
                    color: Color(0xffEC0000),
                    fontSize: 16,
                  ),
                ),
              ),
            ),
          ),
           Expanded(
             child: StaggeredGridView.countBuilder(

             crossAxisCount: 4,
             itemCount: 8,
             itemBuilder: (BuildContext context, int index) =>  InkWell(
                onTap: () {
                Navigator.push(
                    context, MaterialPageRoute(builder: (ctx) => TypesOfburger()));
              },
               child: Card(
                 elevation: 3,
                 shape: RoundedRectangleBorder(
                   borderRadius: BorderRadius.only(
                      bottomRight: Radius.circular(30),
                      topLeft:Radius.circular(30),
                      topRight: Radius.circular(30),
                    )),
                 child: Container(
                  padding: EdgeInsets.symmetric(vertical: 10),
                  decoration: BoxDecoration(
                    border: Border.all( color: Color(0xff990000),),
                    borderRadius: BorderRadius.only(
                      bottomRight: Radius.circular(30),
                      topLeft:Radius.circular(30),
                      topRight: Radius.circular(30),
                    )
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text('الفطور',style: TextStyle(
                        fontSize: 16,
                        color: Color(0xff990000),
                      ),),
                      Image.asset('assets/burger.png'),
                    ],
                  ),
                         ),
               ),
             ),
             staggeredTileBuilder: (int index) =>
                 new StaggeredTile.count(2, index.isEven ? 1 : 1),
             mainAxisSpacing: 8.0,
             crossAxisSpacing: 2.0,
           ),
           )
         
        ]),
      ),
    );
  }
}
