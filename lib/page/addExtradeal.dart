import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:now_app/page/delegateInfo.dart';

class AddExtraDealPage extends StatefulWidget {
  @override
  _AddExtraDealPageState createState() => _AddExtraDealPageState();
}

class _AddExtraDealPageState extends State<AddExtraDealPage> {
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
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(30)),
              child: Container(
                  padding: EdgeInsets.symmetric(horizontal: 30),
                  color:Color(0xffF2F3F4),
                  child: Column(children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
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
                    Image.asset(
                      'assets/deal.png',
                      height: 180,
                    )
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
            SizedBox(
              height: 10,
            ),
            Container(
              padding: EdgeInsets.symmetric(horizontal: 20),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(children: [
                        Text(
                          'ريال',
                          textAlign: TextAlign.right,
                          style: TextStyle(
                            fontSize: 13,
                            fontWeight: FontWeight.bold,
                            color: Color(0xff990000),
                          ),
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Text(
                          '00:00',
                          textAlign: TextAlign.right,
                          style: TextStyle(
                            fontSize: 13,
                            fontWeight: FontWeight.bold,
                            color: Color(0xff990000),
                          ),
                        ),
                      ]),
                      Row(
                        children: [
                          Text(
                            'فانتا ',
                            textAlign: TextAlign.right,
                            style: TextStyle(
                              fontSize: 13,
                              fontWeight: FontWeight.bold,
                              color: Color(0xff990000),
                            ),
                          ),
                          SizedBox(
                            width: 10,
                          ),
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
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        // width: MediaQuery.of(context).size .width * 0.055,
                        // height: MediaQuery.of(context).size .height *0.03,
                        decoration: BoxDecoration(
                          border: Border.all(
                             color: Color(0xff990000),
                          ),
                          borderRadius: BorderRadius.circular(5),
                        ),
                        child: Icon(
                          Icons.remove,
                          size: 20,
                          color: Color(0xff990000),
                        ),
                      ),
                      SizedBox(
                        width: MediaQuery.of(context).size.width * 0.035,
                      ),
                      Text(
                        '1',
                        style:
                            TextStyle(color: Color(0xff990000), fontSize: 17),
                      ),
                      SizedBox(
                        width: MediaQuery.of(context).size.width * 0.035,
                      ),
                      Container(
                        // width: MediaQuery.of(context).size .width * 0.055,
                        // height: MediaQuery.of(context).size .height *0.03,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(5),
                          border: Border.all(
                            color: Color(0xff990000),
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
                 InkWell(
                    onTap: () {
                Navigator.push(
                    context, MaterialPageRoute(builder: (ctx) => DelegateInfo()));
              },
                   child: Container(
                    padding:
                        EdgeInsets.only(right: 45, left: 45, bottom: 15, top: 10),
                    decoration: BoxDecoration(
                        image: DecorationImage(
                      image: AssetImage('assets/Rectangle 18.png'),
                      fit: BoxFit.fill)),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                    'اكمل الطلب',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Colors.white,
                    ),
                        ),
                      ],
                    )),
                 )
                ],
              ),
            )
          ]),
        ),
      ),
    );
  }
}
