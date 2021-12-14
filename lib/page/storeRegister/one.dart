import 'package:flutter/material.dart';
import 'package:now_app/page/storeRegister/two.dart';
import 'package:now_app/page/swapSearching.dart';

class OnePage extends StatefulWidget {
  @override
  _OnePageState createState() => _OnePageState();
}

class _OnePageState extends State<OnePage> with SingleTickerProviderStateMixin {
  TabController _tabController1;
  @override
  void initState() {
    // initialise your tab controller here

    super.initState();
    _tabController1 = TabController(length: 2, vsync: this);
  }

  @override
  void dispose() {
    super.dispose();
    _tabController1.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Container(
          padding: EdgeInsets.symmetric(horizontal: 30),
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
          child: Column(
            children: [
              SizedBox(
                height: 20,
              ),
              Container(
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
                            Navigator.push(context, MaterialPageRoute(builder: (ctx)=>SwapSearching()));

                        }, child: Image.asset('assets/button.png'))
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
                    'التسجيل كشريك  جديد ',
                    textAlign: TextAlign.right,
                    style: TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.bold,
                      color: Color(0xff990000),
                    ),
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Text(
                    'معلومات الشركة',
                    textAlign: TextAlign.right,
                    style: TextStyle(
                      shadows: [
                        Shadow(
                            blurRadius: 2,
                            offset: Offset(0, 2),
                            color: Colors.black45)
                      ],
                      fontSize: 15,
                      fontWeight: FontWeight.bold,
                      color: Color(0xffFFBBBB),
                    ),
                  ),
                  SizedBox(
                    width: 10,
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
                          '1',
                          style: TextStyle(
                            color: Colors.white,
                          ),
                        )),
                  ),
                ],
              ),
              SizedBox(height: 5),
              Container(
                padding: EdgeInsets.only(top: 20, left: 20, right: 20),
                decoration: BoxDecoration(
                    color: Colors.white.withOpacity(0.5),
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(20),
                        topRight: Radius.circular(20))),
                child: Container(
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(10),
                          topRight: Radius.circular(10))),
                  child: TabBar(
                    controller: _tabController1,
                    unselectedLabelColor: Color(0xff9890B8),
                    labelColor: Color(0xff990000),
                    labelPadding: EdgeInsets.symmetric(horizontal: 5),
                    indicatorSize: TabBarIndicatorSize.label,
                   indicatorColor: Color(0xff990000),
                    tabs: <Widget>[
                      Tab(
                        child: Container(
                          decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(50),
                              border: Border.all(
                                color: Colors.white,
                              )),
                          child: Align(
                            alignment: Alignment.center,
                            child: Text(
                              'اسر منتجة',
                              style: TextStyle(fontSize: 16),
                            ),
                          ),
                        ),
                      ),
                      Tab(
                        child: Container(
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: Align(
                            alignment: Alignment.center,
                            child: Text(
                              'شركة',
                              style: TextStyle(fontSize: 16),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Expanded(
                child: Container(
                  // height: MediaQuery.of(context).size.height * 0.7,
                  // width: MediaQuery.of(context).size.width * 0.93,

                  child: TabBarView(
                    controller: _tabController1,
                    children: <Widget>[
                       TwoPage(),
                      Container(
                        padding: EdgeInsets.symmetric(horizontal: 10,vertical: 20),
                        child: Column(
                          children: [
                            Card(
                              
                              elevation: 3,
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(30)),
                              child: Container(
                                
                                padding: EdgeInsets.symmetric(
                                    horizontal: 10, vertical: 10),
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(30),
                                ),
                                child: Column(
                                  children: [
                                    Container(
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
                                          hintText: 'اسم الشركة باللغة العربية',
                                          hintStyle: TextStyle(
                                              color: Color(0xff949494), fontSize: 13),
                                        ),
                                      ),
                                    ),
                                    SizedBox(
                                      height: 10,
                                    ),
                                    Row(
                                      mainAxisAlignment: MainAxisAlignment.end,
                                      children: [
                                        Text(
                                          'مطلوب',
                                          textAlign: TextAlign.right,
                                          style: TextStyle(
                                            fontSize: 15,
                                            color: Color(0xff990000),
                                          ),
                                        ),
                                        SizedBox(
                                          width: 10,
                                        ),
                                        Container(
                                          decoration: BoxDecoration(
                                              shape: BoxShape.circle,
                                            ),
                                          child: CircleAvatar(
                                              radius: 10,
                                              backgroundColor: Color(0xffFFBBBB),
                                              child: Text(
                                                '!',
                                                style: TextStyle(
                                                  color: Colors.black,
                                                ),
                                              )),
                                        ),
                                      ],
                                    ),
                                    SizedBox(
                                      height: 20,
                                    ),
                                    Container(
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
                                          hintText: 'اسم الشركة باللغة الانجليزية',
                                          hintStyle: TextStyle(
                                              color: Color(0xff949494), fontSize: 13),
                                        ),
                                      ),
                                    ),
                                    SizedBox(
                                      height: 10,
                                    ),
                                    Container(
                                      padding: EdgeInsets.symmetric(horizontal: 20),
                                      decoration: BoxDecoration(
                                          borderRadius: BorderRadius.circular(20),
                                          border: Border.all(
                                            color: Color(0xff990000),
                                          )),
                                      child: Row(
                                        children: [
                                          Container(
                                            padding: EdgeInsets.symmetric(vertical: 10,horizontal: 8),
                                          decoration: BoxDecoration(
                                              shape: BoxShape.circle,
                                              border: Border.all(color: Colors.grey),
                                            ),
                                            child: Text(
                                                '!',
                                                style: TextStyle(
                                                  color: Colors.grey
                                                ),
                                              )
                                        ),
                                          Expanded(
                                            child: TextFormField(
                                              textAlign: TextAlign.right,
                                              decoration: InputDecoration(
                                              
                                               isDense: true,
                                                border: InputBorder.none,
                                                hintText: 'رقم السجل التجاري',
                                                hintStyle: TextStyle(
                                                    color: Color(0xff949494), fontSize: 13),
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                    SizedBox(
                                      height: 10,
                                    ),

                                  ],
                                ),
                              ),
                            ),
                            SizedBox(height: 30,),
                            InkWell(
                              onTap:(){

                              },
                              child: Image.asset('assets/forward_button.png',)),
                          ],
                        ),
                      ),
                     
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
