import 'package:flutter/material.dart';

import 'one.dart';

class StoreRegister extends StatefulWidget {
  @override
  _StoreRegisterState createState() => _StoreRegisterState();
}

class _StoreRegisterState extends State<StoreRegister> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
              image: DecorationImage(image: AssetImage('assets/Artboard.png'),),),
          child: Column(
            children: [
              SizedBox(
                height: 20,
              ),
              Container(
                padding: EdgeInsets.symmetric(horizontal: 20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Text(
                      'تسجيل متجر',
                      style: TextStyle(
                        fontWeight: FontWeight.w600,
                        fontSize: 18,
                      ),
                    ),
                    SizedBox(
                      width: 70,
                    ),
                    InkWell(
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (ctx) => StoreRegister()));
                        },
                        child: Image.asset('assets/button.png'))
                  ],
                ),
              ),
              SizedBox(
                height: 40,
              ),
              InkWell(
                  onTap: () {
                    // Navigator.push(context, MaterialPageRoute(builder: (ctx)=>HomePage()));
                  },
                  child: Card(
                    margin: EdgeInsets.symmetric(horizontal: 100),
                    elevation: 3,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(30)),
                    child: Container(
                      padding: EdgeInsets.symmetric(
                        vertical: 10,
                      ),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(30),
                          color: Colors.white),
                      child: Center(
                        child: Text(
                          'مرحبا شركاء النجاح',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            fontSize: 15,
                            fontWeight: FontWeight.bold,
                            color: Color(0xff990000),
                          ),
                        ),
                      ),
                    ),
                  )),
              Container(
                margin:
                    EdgeInsets.only(left: 70, right: 70, top: 110, bottom: 10),
                decoration: BoxDecoration(
                  border: Border(
                    bottom: BorderSide(
                      color: Color(0xff990000),
                      width: 1,
                    ),
                  ),
                ),
                child: TextFormField(
                    keyboardType: TextInputType.number,
                    textAlign: TextAlign.center,
                    decoration: InputDecoration(
                      isDense: true,
                      contentPadding: EdgeInsets.zero,
                      border: InputBorder.none,
                    )),
              ),
              Text(
                'كيف تنضم لنا ؟ ',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 15,
                  fontWeight: FontWeight.bold,
                  color: Color(0xff990000),
                ),
              ),
              SizedBox(
                height: 30,
              ),
              Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            border: Border.all(
                              color: Color(0xff990000),
                            )),
                        child: CircleAvatar(
                            radius: 15,
                            backgroundColor: Color(0xffCEFEE6),
                            child: Icon(
                              Icons.check,
                              size: 20.0,
                              color: Color(0xff8F005A),
                            )),
                      ),
                      Container(
                        padding:
                            EdgeInsets.symmetric(vertical: 1, horizontal: 30),
                        color: Color(0xff990000),
                      ),
                      Container(
                        decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            border: Border.all(
                              color: Color(0xff990000),
                            )),
                        child: CircleAvatar(
                            radius: 15,
                            backgroundColor: Color(0xffFFBBBB),
                            child: Text(
                              '3',
                              style: TextStyle(
                                color: Colors.white,
                              ),
                            )),
                      ),
                      Container(
                        padding:
                            EdgeInsets.symmetric(vertical: 1, horizontal: 30),
                        color: Color(0xff990000),
                      ),
                      Container(
                        decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            border: Border.all(
                              color: Color(0xff990000),
                            )),
                        child: CircleAvatar(
                            radius: 15,
                            backgroundColor: Color(0xffFFBBBB),
                            child: Text(
                              '2',
                              style: TextStyle(
                                color: Colors.white,
                              ),
                            )),
                      ),
                      Container(
                        padding:
                            EdgeInsets.symmetric(vertical: 1, horizontal: 30),
                        color: Color(0xff990000),
                      ),
                      InkWell(
                        onTap: (){
                          Navigator.push(context, MaterialPageRoute(builder: (ctx)=>OnePage()));
                        },
                        child: Container(
                          decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              border: Border.all(
                                color: Color(0xff990000),
                              )),
                          child: CircleAvatar(
                              radius: 15,
                              backgroundColor: Color(0xffFFBBBB),
                              child: Text(
                                '1',
                                style: TextStyle(
                                  color: Colors.white,
                                ),
                              )),
                        ),
                      ),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Column(
                        children: [
                          Text(
                            'ابدأ بإستلام',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              fontSize: 9,
                              fontWeight: FontWeight.bold,
                              color: Color(0xff990000),
                            ),
                          ),
                          Text(
                            'طلبات أكثر',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              fontSize: 9,
                              fontWeight: FontWeight.bold,
                              color: Color(0xff990000),
                            ),
                          ),
                        ],
                      ),
                      Column(
                        children: [
                          Text(
                            'ضبط ملف',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              fontSize: 9,
                              fontWeight: FontWeight.bold,
                              color: Color(0xff990000),
                            ),
                          ),
                          Text(
                            ' التعريف',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              fontSize: 9,
                              fontWeight: FontWeight.bold,
                              color: Color(0xff990000),
                            ),
                          ),
                          Text(
                            ' الخاص بشركتك',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              fontSize: 9,
                              fontWeight: FontWeight.bold,
                              color: Color(0xff990000),
                            ),
                          ),
                        ],
                      ),
                      Column(
                        children: [
                          Text(
                            'بيتواصل معك',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              fontSize: 9,
                              fontWeight: FontWeight.bold,
                              color: Color(0xff990000),
                            ),
                          ),
                          Text(
                            'فريقنا',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              fontSize: 9,
                              fontWeight: FontWeight.bold,
                              color: Color(0xff990000),
                            ),
                          ),
                        ],
                      ),
                      Text(
                        'ارسل بياناتك',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontSize: 9,
                          fontWeight: FontWeight.bold,
                          color: Color(0xff990000),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
              Spacer(),
              Container(
                  padding:
                      EdgeInsets.only(right: 50, left: 50, bottom: 15, top: 10),
                  decoration: BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage('assets/Rectangle 18.png'),
                          fit: BoxFit.fill)),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'انضم الآن كشريك',
                        style: TextStyle(
                          color: Colors.white,
                        ),
                      ),
                    ],
                  ))
            ],
          ),
        ),
      ),
    );
  }
}
