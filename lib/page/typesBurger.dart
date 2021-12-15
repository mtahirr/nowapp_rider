import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:now_app/page/wishlist.dart';

class TypesOfburger extends StatefulWidget {
  @override
  _TypesOfburgerState createState() => _TypesOfburgerState();
}

class _TypesOfburgerState extends State<TypesOfburger> {
  bool switchControl = false;
  bool _switchValue = true;
  bool _switchValue1 = false;
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
              height: 20,
            ),
            Card(
              margin: EdgeInsets.symmetric(horizontal: 100),
              elevation: 3,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(30)),
              child: Container(
                padding: EdgeInsets.symmetric(vertical: 10),
                decoration: BoxDecoration(
                    border: Border.all(
                      color: Color(0xff990000),
                    ),
                    borderRadius: BorderRadius.circular(30)),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'الفطور',
                      style: TextStyle(
                        fontSize: 16,
                        color: Color(0xff990000),
                      ),
                    ),
                    Image.asset(
                      'assets/burger.png',
                      fit: BoxFit.fill,
                    ),
                  ],
                ),
              ),
            ),
            Row(mainAxisAlignment: MainAxisAlignment.end, children: [
              Text(
                'متاح',
                style: TextStyle(
                  fontSize: 10,
                ),
              ),
              
              Transform.scale(
                scale: 0.6,
                child: CupertinoSwitch(
                  activeColor: Color(0xff990000),
                  value: _switchValue1,
                  onChanged: (value) {
                    setState(() {
                      _switchValue1 = value;
                    });
                  },
                ),
              ),
            ]),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Text(
                'غير متاح',
                style: TextStyle(
                  fontSize: 10,
                ),
              ),
              Transform.scale(
                scale: 0.6,
                child: CupertinoSwitch(
                  activeColor: Color(0xff990000),
                  value: _switchValue,
                  onChanged: (value) {
                    setState(() {
                      _switchValue = value;
                    });
                  },
                ),
              ),
              ],
            ),
            InkWell(
              onTap: () {
                Navigator.push(
                    context, MaterialPageRoute(builder: (ctx) => WishListPage()));
              },
              child: Container(
                child: Row(
                  mainAxisAlignment:MainAxisAlignment.end,
                  children:[
                    Card(
                   elevation: 3,
                   shape: RoundedRectangleBorder(
                     borderRadius: BorderRadius.only(
                        bottomRight: Radius.circular(30),
                        topLeft:Radius.circular(30),
                        topRight: Radius.circular(30),
                      )),
                   child: Container(
                   
                    padding: EdgeInsets.symmetric(vertical: 10,horizontal: 10),
                    decoration: BoxDecoration(
                      border: Border.all( color: Color(0xff990000),),
                      borderRadius: BorderRadius.only(
                        bottomRight: Radius.circular(30),
                        topLeft:Radius.circular(30),
                        topRight: Radius.circular(30),
                      )
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                         mainAxisAlignment:MainAxisAlignment.end,
                          children: [
                            Container(
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.end,
                                children: [
                                  Text('الفطور',style: TextStyle(
                                    fontSize: 16,
                                    
                                  ),),
                                  Text(' خبز عادي +  سلطة الخردل  ',
                                  textAlign: TextAlign.end,
                                     overflow: TextOverflow.ellipsis,
                                    
                                  style: TextStyle(
                                    fontSize: 12,
                                    color: Color(0xff777576),
                                  ),),
                                              
                                ],
                              ),
                            ),
                            Container(child: Image.asset('assets/burger.png')),
                          ],
                        ),
                           Row(
                             mainAxisAlignment: MainAxisAlignment.start,
                             children: [
                               Text('70',style: TextStyle(
                                        fontSize: 12,
                                        color: Color(0xff777576),
                                      ),),
                               Text('ريال',
                                textAlign: TextAlign.justify,
                               style: TextStyle(
                                        fontSize: 12,
                                        color: Color(0xff777576),
                                      ),),
                             ],
                           ),
                      ],
                    ),
                           ),
                 ),
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
                  ]
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
