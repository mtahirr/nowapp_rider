import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:now_app/page/notification.dart';

class SwapSearching extends StatefulWidget {
  @override
  _SwapSearchingState createState() => _SwapSearchingState();
}

class _SwapSearchingState extends State<SwapSearching> {
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
        padding: EdgeInsets.symmetric(horizontal: 20),
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
            height: 40,
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
            Card(
              elevation: 3,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(30)),
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
            SizedBox(
              height: MediaQuery.of(context).size.height *0.3,
            ),
           
           Row(
             mainAxisAlignment: MainAxisAlignment.center,
             children: [
               Icon(Icons.search,color: Color(0xff990000),),
             Text(
               'اسحب الشاشة للأسفل لتصلك الطلبات',
               style: TextStyle(
                 fontSize: 18,
                 color: Color(0xff990000),
                 fontWeight: FontWeight.w600,
               ),
             ),
           ]), 
           InkWell(
             onTap:(){
                 Navigator.push(context, MaterialPageRoute(builder: (ctx)=>NotificationPage()));
             },
             child: Image.asset('assets/finger.png')),
          ],
        ),
      ),
    );
  }
}
