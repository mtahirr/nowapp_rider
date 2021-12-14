import 'package:flutter/material.dart';
import 'package:now_app/page/storeRegister/storeRegistration.dart';

class RegisterDelegate extends StatefulWidget {
  @override
  _RegisterDelegateState createState() => _RegisterDelegateState();
}

class _RegisterDelegateState extends State<RegisterDelegate> {
  bool _value = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Container(
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              color: Colors.white,
              boxShadow: [
                BoxShadow(
                    color: Colors.black45, offset: Offset(0, 0), blurRadius: 3),
              ],
              image: DecorationImage(
                  image: AssetImage('assets/Artboard 100.png'))),
          child: Column(children: [
            SizedBox(
              height: 20,
            ),
            Container(
              padding: EdgeInsets.symmetric(horizontal: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Text(
                    'سجل كمندوب',
                    style: TextStyle(
                      fontWeight: FontWeight.w600,
                      fontSize: 18,
                    ),
                  ),
                  SizedBox(
                    width: 70,
                  ),
                  InkWell(
                    onTap: (){
                    Navigator.push(context, MaterialPageRoute(builder: (ctx)=>StoreRegister()));
                    },
                    child: Image.asset('assets/button.png'))
                ],
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Container(
              padding: EdgeInsets.symmetric(horizontal: 40),
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Text(
                          'البيانات الشخصية',
                          style: TextStyle(
                            fontWeight: FontWeight.w600,
                            fontSize: 16,
                            color: Color(0xff990000),
                          ),
                        ),
                        SizedBox(
                          width: 5,
                        ),
                        Image.asset('assets/customer.png')
                      ],
                    ),
                    Card(
                      elevation: 3,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20)),
                      child: Container(
                        padding: EdgeInsets.symmetric(horizontal: 20),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            border: Border.all(
                              color: Color(0xff990000),
                            )),
                        child: TextFormField(
                          textAlign: TextAlign.right,
                          decoration: InputDecoration(
                            isDense: true,
                            border: InputBorder.none,
                            hintText: 'الاسم الرباعي ',
                            hintStyle:
                                TextStyle(color: Color(0xff949494), fontSize: 13),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Container(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            children: [
                              Card(
                                elevation: 3,
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(20)),
                                child: Container(
                                  padding: EdgeInsets.symmetric(
                                      vertical: 2, horizontal: 30),
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(20),
                                      color: Color(0xff8F005A)),
                                  child: Center(
                                    child: Text(
                                      'ذكر',
                                      style: TextStyle(
                                        color: Colors.white,
                                        fontWeight: FontWeight.w600,
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                              Card(
                                elevation: 3,
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(20)),
                                child: Container(
                                  padding: EdgeInsets.symmetric(
                                      vertical: 2, horizontal: 30),
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(20),
                                      border:
                                          Border.all(color: Color(0xff8F005A))),
                                  child: Center(
                                    child: Text(
                                      'انثى',
                                      style: TextStyle(
                                        color: Colors.grey,
                                        fontWeight: FontWeight.w600,
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                          Text(
                            'الجنس',
                            style: TextStyle(
                              fontWeight: FontWeight.w600,
                              fontSize: 15,
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            Column(
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  Text(
                                    'رفع صورة بطاقة الاحوال',
                                    textAlign: TextAlign.right,
                                    style: TextStyle(
                                      fontSize: 13,
                                      color: Color(0xff990000),
                                    ),
                                  ),
                                  Text(
                                    'معلوماتك وخصوصيات في آمان',
                                    textAlign: TextAlign.right,
                                    style: TextStyle(
                                      fontSize: 11,
                                      color: Colors.grey,
                                    ),
                                  ),
                                ]),
                            Image.asset('assets/upload.png'),
                          ],
                        ),
                        Row(
                          children: [
                            Column(
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  Text(
                                    'رفع صورة شخصية',
                                    textAlign: TextAlign.right,
                                    style: TextStyle(
                                      fontSize: 13,
                                      color: Color(0xff990000),
                                    ),
                                  ),
                                  Text(
                                    'اقل مقاس مسموح به حتى ',
                                    textAlign: TextAlign.right,
                                    style: TextStyle(
                                      fontSize: 11,
                                      color: Colors.grey,
                                    ),
                                  ),
                                ]),
                            Image.asset('assets/upload.png'),
                          ],
                        ),
                      ],
                    ),
                    Container(
                      padding: EdgeInsets.symmetric(horizontal: 28),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Text(
                            '500 Px - 500 Px',
                            textAlign: TextAlign.right,
                            style: TextStyle(
                              fontSize: 11,
                              color: Colors.grey,
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Text(
                          'رقم الهاتف',
                          textAlign: TextAlign.right,
                          style: TextStyle(
                            fontWeight: FontWeight.w600,
                            fontSize: 16,
                            color: Color(0xff990000),
                          ),
                        ),
                        SizedBox(
                          width: 5,
                        ),
                        Image.asset('assets/phone-call.png')
                      ],
                    ),
                    Card(
                      elevation: 3,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20)),
                      child: Container(
                        padding: EdgeInsets.symmetric(horizontal: 20),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            border: Border.all(
                              color: Color(0xff990000),
                            )),
                        child: TextFormField(
                          textAlign: TextAlign.left,
                          decoration: InputDecoration(
                            isDense: true,
                            border: InputBorder.none,
                            hintText: '+955 5055418623 ',
                            hintStyle:
                                TextStyle(color: Color(0xff949494), fontSize: 13),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Text(
                          'معلومات المركبة',
                          textAlign: TextAlign.right,
                          style: TextStyle(
                            fontWeight: FontWeight.w600,
                            fontSize: 16,
                            color: Color(0xff990000),
                          ),
                        ),
                        SizedBox(
                          width: 5,
                        ),
                        Image.asset('assets/steering-wheel.png')
                      ],
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            Column(
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  Text(
                                    'رفع صورة رخصة القيادة',
                                    textAlign: TextAlign.right,
                                    style: TextStyle(
                                      fontSize: 13,
                                      color: Color(0xff990000),
                                    ),
                                  ),
                                  Text(
                                    'اقل مقاس مسموح به حتى',
                                    textAlign: TextAlign.right,
                                    style: TextStyle(
                                      fontSize: 11,
                                      color: Colors.grey,
                                    ),
                                  ),
                                ]),
                            Image.asset('assets/upload.png'),
                          ],
                        ),
                        Row(
                          children: [
                            Column(
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  Text(
                                    'رفع صورة الاستمارة',
                                    textAlign: TextAlign.right,
                                    style: TextStyle(
                                      fontSize: 13,
                                      color: Color(0xff990000),
                                    ),
                                  ),
                                  Text(
                                    'اقل مقاس مسموح به حتى ',
                                    textAlign: TextAlign.right,
                                    style: TextStyle(
                                      fontSize: 11,
                                      color: Colors.grey,
                                    ),
                                  ),
                                ]),
                            Image.asset('assets/upload.png'),
                          ],
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Text(
                          'صورة المركبة',
                          textAlign: TextAlign.right,
                          style: TextStyle(
                            fontWeight: FontWeight.w600,
                            fontSize: 16,
                            color: Color(0xff990000),
                          ),
                        ),
                        SizedBox(
                          width: 5,
                        ),
                        Image.asset('assets/car.png')
                      ],
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Container(
                          padding:
                              EdgeInsets.symmetric(vertical: 2, horizontal: 13),
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20),
                              border: Border.all(color: Color(0xff8F005A))),
                          child: Column(
                            children: [
                              Image.asset('assets/jeep.png'),
                              Text(
                                'رفع صورة المركة',
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  color: Color(0xff8F005A),
                                  fontSize: 10,
                                ),
                              ),
                              Text(
                                'من الخلف',
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  color: Color(0xff8F005A),
                                  fontSize: 10,
                                ),
                              ),
                            ],
                          ),
                        ),
                        Container(
                          padding:
                              EdgeInsets.symmetric(vertical: 5, horizontal: 15),
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20),
                              border: Border.all(color: Color(0xff8F005A))),
                          child: Column(
                            children: [
                              Image.asset('assets/prado.png'),
                              Text(
                                'رفع صورة المركة',
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  color: Color(0xff8F005A),
                                  fontSize: 10,
                                ),
                              ),
                              Text(
                                'من الامام',
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  color: Color(0xff8F005A),
                                  fontSize: 10,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Row(
                          children: [
                            Text(
                              'شروط وسياسة الاستخدام',
                              style: TextStyle(
                                  decoration: TextDecoration.underline,
                                  color: Color(0xff8F005A),
                                  fontSize: 11,
                                  fontWeight: FontWeight.bold),
                            ),
                            Text(
                              'بإتمامي للتسجيل فإنني أعد موافقاً على',
                              style: TextStyle(
                                color: Colors.grey,
                                fontSize: 11,
                              ),
                            ),
                          ],
                        ),
                        SizedBox(
                          width: 5,
                        ),
                        InkWell(
                          onTap: () {
                            setState(() {
                              _value = !_value;
                            });
                          },
                          child: Container(
                            decoration: BoxDecoration(
                                border: Border.all(color: Colors.grey),
                                shape: BoxShape.rectangle,
                                color: Colors.transparent),
                            child: _value
                                ? Icon(
                                    Icons.check,
                                    size: 20.0,
                                    color: Color(0xff8F005A),
                                  )
                                : Icon(
                                    Icons.check_box_outline_blank,
                                    size: 20.0,
                                    color: Colors.transparent,
                                  ),
                          ),
                        )
                      ],
                    ),
                    Container(
                      padding: EdgeInsets.only(right: 16),
                      child: Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            Text(
                              'الخاصة بتطبيق تو قو',
                              style: TextStyle(
                                color: Colors.grey,
                                fontSize: 11,
                              ),
                            ),
                          ]),
                    ),
                    InkWell(
                      onTap:(){
                        _showMyDialog1();
                      },
                      child: Image.asset('assets/Group 221.png')),
                  ],
                ),
              ),
            ),
          ]),
        ),
      ),
    );
  }
   _showMyDialog1() {
    return showDialog(
      context: context,
      builder: (BuildContext context) {
        return Dialog(
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(30.0)),
            child: Container(
              height: 150,
              padding: EdgeInsets.symmetric(vertical: 20, horizontal: 15),
              child: Column(
                children: [
                  Text(
                    'تم ارســال طلبك بنجــاح',
                    style: TextStyle(fontSize: 20),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                 Text(
                    'سيتم مراجعة طلبك , والرد في اقرب وقت ',
                    textAlign: TextAlign.center,
                    style: TextStyle(fontSize: 12),
                  ),
                ],
              ),
            ),);
      },
    );
  }
}
