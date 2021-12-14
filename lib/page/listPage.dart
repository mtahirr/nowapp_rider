import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:now_app/page/orderHistory.dart';

class ListPage extends StatefulWidget {
  @override
  _ListPageState createState() => _ListPageState();
}

class _ListPageState extends State<ListPage> {
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
              SizedBox(height: 40),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      Image.asset('assets/cart.png'),
                      Text(
                        'القائمة',
                        style: TextStyle(
                          fontSize: 15,
                        ),
                      ),
                    ],
                  ),
                  InkWell(
                    onTap: (){
                      Navigator.push(context, MaterialPageRoute(builder: (ctx)=>OrderHistory()));
                    },
                    child: Text(
                      'الرجاء التحديث',
                      style: TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.w600,
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
                ],
              ),
              SizedBox(
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    padding: EdgeInsets.symmetric(vertical: 3, horizontal: 15),
                    decoration: BoxDecoration(
                      color: Color(0xffFFBBBB),
                      borderRadius: BorderRadius.circular(5),
                      border: Border.all(
                        color: Color(0xff990000),
                      ),
                    ),
                    child: Center(
                      child: Text(
                        'الطلبات السابقة',
                        style: TextStyle(
                          fontSize: 11,
                          color: Colors.black,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.symmetric(vertical: 3, horizontal: 15),
                    decoration: BoxDecoration(
                      color: Color(0xffFFBBBB),
                      borderRadius: BorderRadius.circular(5),
                      border: Border.all(
                        color: Color(0xff990000),
                      ),
                    ),
                    child: Center(
                      child: Text(
                        'تجهيز الطلب',
                        style: TextStyle(
                          fontSize: 11,
                          color: Colors.black,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.symmetric(vertical: 3, horizontal: 15),
                    decoration: BoxDecoration(
                      color: Color(0xffFFBBBB),
                      borderRadius: BorderRadius.circular(5),
                      border: Border.all(
                        color: Color(0xff990000),
                      ),
                    ),
                    child: Center(
                      child: Text(
                        'طلبات جديدة',
                        style: TextStyle(
                          fontSize: 11,
                          color: Colors.black,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 15,
              ),
              Card(
                elevation: 3,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20)),
                child: Container(
                  padding: EdgeInsets.symmetric(vertical: 10, horizontal: 10),
                  child: Column(children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          children: [
                            CircleAvatar(
                              radius: 18,
                              backgroundColor: Color(0xff990000),
                              child: CircleAvatar(
                                radius: 17,
                              ),
                            ),
                             Text(
                            'احمد',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              fontSize: 10,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                          ],
                        ),
                        Container(
                          padding:
                              EdgeInsets.symmetric(vertical: 3, horizontal: 15),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(5),
                            border: Border.all(
                              color: Color(0xff979797),
                            ),
                          ),
                          child: Row(
                            children: [
                              Text(
                                'ريال',
                                textAlign: TextAlign.right,
                                style: TextStyle(
                                  fontSize: 10,
                                  color: Color(0xff979797),
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                              Text(
                                ' 50',
                                style: TextStyle(
                                  fontSize: 10,
                                  color: Color(0xff979797),
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                              Text(
                                'قيمة الطلب ',
                                style: TextStyle(
                                  fontSize: 10,
                                  color: Color(0xff979797),
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                            ],
                          ),
                        ),
                        Text(
                          '67882#',
                          style: TextStyle(
                            fontSize: 12,
                            color: Color(0xff990000),
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                       
                        Row(children: [
                          Column(
                            children: [
                              CircleAvatar(
                                radius: 16,
                                backgroundColor: Color(0xff990000),
                                child: CircleAvatar(
                                  radius: 14,
                                ),
                              ),
                              SizedBox(
                                height: 2,
                              ),
                              Text(
                                'الدكان',
                                style: TextStyle(
                                  fontSize: 10,
                                  color: Color(0xff990000),
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                            ],
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
                            padding: EdgeInsets.symmetric(
                                vertical: 3, horizontal: 15),
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
                              'المندوب',
                              style: TextStyle(
                                fontSize: 10,
                                color: Color(0xff990000),
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                          ])
                        ]),
                      ],
                    ),
                   Row(
                     mainAxisAlignment: MainAxisAlignment.center,
                     children:[
                       Container(
                          padding:
                              EdgeInsets.symmetric(vertical: 3, horizontal: 15),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(5),
                            border: Border.all(
                              color: Color(0xff979797),
                            ),
                          ),
                          child: Center(
                            child: Text(
                              'رفض',
                              style: TextStyle(
                                fontSize: 10,
                                color: Color(0xff979797),
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                          ),
                        ),
                        SizedBox(width: 20,),
                       Container(
                    padding: EdgeInsets.symmetric(vertical: 3, horizontal: 15),
                    decoration: BoxDecoration(
                      color: Color(0xffFFBBBB),
                      borderRadius: BorderRadius.circular(5),
                      border: Border.all(
                        color: Color(0xff990000),
                      ),
                    ),
                    child: Center(
                      child: Text(
                        'قبول',
                        style: TextStyle(
                          fontSize: 11,
                          color: Colors.black,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ),
                  ),
                     ]
                   )
                  ]),
                ),
              ),
            ],),),);
  }
}
