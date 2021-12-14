import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class TwoPage extends StatefulWidget {
  @override
  _TwoPageState createState() => _TwoPageState();
}

class _TwoPageState extends State<TwoPage> {
  int _radioSelected = 1;

  List<String> _locations = ['A', 'B', 'C', 'D'];
  String _selectedLocation;
  @override
  Widget build(BuildContext context) {
    return Container(
      child: SingleChildScrollView(
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Text(
                  ': حدد النوع',
                  textAlign: TextAlign.right,
                  style: TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.bold,
                    color: Color(0xff990000),
                  ),
                ),
              ],
            ),
            Card(
              elevation: 3,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20)),
              child: Container(
                padding: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                ),
                child: SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: [
                      Stack(
                        children: [
                          Image.asset('assets/container1.png'),
                          Positioned(
                            left: 0,
                            right: 0,
                            top: 20,
                            child: Center(
                              child: CircleAvatar(
                                radius: 15,
                                backgroundColor: Color(0xff00EF60),
                                child: CircleAvatar(
                                  radius: 6,
                                  backgroundColor: Colors.white,
                                ),
                              ),
                            ),
                          )
                        ],
                      ),
                      Image.asset('assets/container2.png'),
                      Image.asset('assets/container3.png')
                    ],
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Card(
              elevation: 3,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(30)),
              child: Container(
                padding: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
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
                            color: Color(0xffFFB4B4),
                          )),
                      child: TextFormField(
                        textAlign: TextAlign.right,
                        decoration: InputDecoration(
                          isDense: true,
                          border: InputBorder.none,
                          hintText: 'اسم الشركة باللغة العربية',
                          hintStyle:
                              TextStyle(color: Color(0xff949494), fontSize: 13),
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
                            color: Color(0xffFFB4B4),
                          )),
                      child: TextFormField(
                        textAlign: TextAlign.right,
                        decoration: InputDecoration(
                          isDense: true,
                          border: InputBorder.none,
                          hintText: 'اسم الشركة باللغة الانجليزية',
                          hintStyle:
                              TextStyle(color: Color(0xff949494), fontSize: 13),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Row(
                      children: [
                        Expanded(
                          child: Container(
                            padding: EdgeInsets.symmetric(
                                horizontal: 10, vertical: 5),
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(20),
                                border: Border.all(
                                  color: Color(0xffFFB4B4),
                                )),
                            child: Directionality(
                              textDirection: TextDirection.rtl,
                              child: DropdownButton(
                                isExpanded: true,
                                underline: SizedBox(),
                                hint: Text(
                                  'المدينة',
                                  style: TextStyle(
                                      color: Colors.grey,
                                      fontWeight: FontWeight.w600),
                                ),
                                isDense: true,
                                value: _selectedLocation,
                                onChanged: (newValue) => setState(() {
                                  _selectedLocation = newValue.toString();
                                }),
                                icon: Icon(
                                  Icons.keyboard_arrow_down_outlined,
                                  color: Color(0xff990000),
                                ),
                                items: _locations.map((location) {
                                  return DropdownMenuItem(
                                    child: new Text(location),
                                    value: location,
                                  );
                                }).toList(),
                              ),
                            ),
                          ),
                        ),
                        SizedBox(
                          width: 5,
                        ),
                        Expanded(
                          child: Container(
                            padding: EdgeInsets.symmetric(
                                horizontal: 10, vertical: 5),
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(20),
                                border: Border.all(
                                  color: Color(0xffFFB4B4),
                                )),
                            child: Directionality(
                              textDirection: TextDirection.rtl,
                              child: DropdownButton(
                                isExpanded: true,
                                isDense: true,
                                underline: SizedBox(),
                                hint: Text(
                                  'المنطقة',
                                  style: TextStyle(
                                      color: Colors.grey,
                                      fontWeight: FontWeight.w600),
                                ),
                                icon: Icon(
                                  Icons.keyboard_arrow_down_outlined,
                                  color: Color(0xff990000),
                                ),
                                value: _selectedLocation,
                                onChanged: (newValue) => setState(() {
                                  _selectedLocation = newValue.toString();
                                }),
                                items: _locations.map((location) {
                                  return DropdownMenuItem(
                                    child: new Text(location),
                                    value: location,
                                  );
                                }).toList(),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Container(
                      padding:
                          EdgeInsets.symmetric(horizontal: 10, vertical: 5),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          border: Border.all(
                            color: Color(0xffFFB4B4),
                          )),
                      child: Directionality(
                        textDirection: TextDirection.rtl,
                        child: DropdownButton(
                          isExpanded: true,
                          isDense: true,
                          underline: SizedBox(),
                          hint: Text(
                            'عدد الفروع',
                            style: TextStyle(
                                color: Colors.grey,
                                fontWeight: FontWeight.w600),
                          ),
                          icon: Icon(
                            Icons.keyboard_arrow_down_outlined,
                            color: Color(0xff990000),
                          ),
                          value: _selectedLocation,
                          onChanged: (newValue) => setState(() {
                            _selectedLocation = newValue.toString();
                          }),
                          items: _locations.map((location) {
                            return DropdownMenuItem(
                              child: new Text(location),
                              value: location,
                            );
                          }).toList(),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Container(
                      padding: EdgeInsets.symmetric(horizontal: 10),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          border: Border.all(
                            color: Color(0xffFFB4B4),
                          )),
                      child: TextFormField(
                        textAlign: TextAlign.right,
                        decoration: InputDecoration(
                          isDense: true,
                          border: InputBorder.none,
                          hintText:
                              'رابط الموقع او حساب التواصل الإجتماعي (إختياري)',
                          hintStyle:
                              TextStyle(color: Color(0xff949494), fontSize: 13),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Card(
                      elevation: 3,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20)),
                      child: Container(
                          padding: EdgeInsets.symmetric(
                              horizontal: 10, vertical: 10),
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20),
                              border: Border.all(
                                color: Color(0xff990000),
                              )),
                          child: Column(
                            children: [
                              Card(
                                elevation: 3,
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(10)),
                                child: Container(
                                  padding: EdgeInsets.only(
                                    right: 10,
                                  ),
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(10),
                                      border: Border.all(
                                        color: Color(0xff990000),
                                      )),
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Row(
                                        children: [
                                          Theme(
                                            data: Theme.of(context).copyWith(
                                              unselectedWidgetColor:
                                                  Color(0xff990000),
                                            ),
                                            child: Radio(
                                              value: 1,
                                              groupValue: _radioSelected,
                                              activeColor: Colors.blue,
                                              onChanged: (value) {
                                                setState(() {
                                                  _radioSelected = value;
                                                });
                                              },
                                            ),
                                          ),
                                          Text('مل',
                                              textAlign: TextAlign.right,
                                              style: TextStyle(
                                                fontSize: 11,
                                                color: Color(0xff990000),
                                              )),
                                          Theme(
                                            data: Theme.of(context).copyWith(
                                              unselectedWidgetColor:
                                                  Color(0xff990000),
                                            ),
                                            child: Radio(
                                              value: 2,
                                              groupValue: _radioSelected,
                                              activeColor: Colors.blue,
                                              onChanged: (value) {
                                                setState(() {
                                                  _radioSelected = value;
                                                });
                                              },
                                            ),
                                          ),
                                          Text('نعم',
                                              textAlign: TextAlign.right,
                                              style: TextStyle(
                                                fontSize: 11,
                                                color: Color(0xff990000),
                                              )),
                                        ],
                                      ),
                                      SizedBox(
                                        width: 10,
                                      ),
                                      Text(
                                        'هل عندك خدمة توصيل؟',
                                        textAlign: TextAlign.right,
                                        style: TextStyle(
                                          fontSize: 12,
                                          fontWeight: FontWeight.bold,
                                          color: Color(0xff990000),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                              SizedBox(
                                height: 5,
                              ),
                              Card(
                                elevation: 3,
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(10)),
                                child: Container(
                                  padding: EdgeInsets.only(
                                    right: 10,
                                  ),
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(10),
                                      border: Border.all(
                                        color: Color(0xff990000),
                                      )),
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Row(
                                        children: [
                                          Theme(
                                            data: Theme.of(context).copyWith(
                                              unselectedWidgetColor:
                                                  Color(0xff990000),
                                            ),
                                            child: Radio(
                                              value: 3,
                                              groupValue: _radioSelected,
                                              activeColor: Colors.blue,
                                              onChanged: (value) {
                                                setState(() {
                                                  _radioSelected = value;
                                                });
                                              },
                                            ),
                                          ),
                                          Text('مل',
                                              textAlign: TextAlign.right,
                                              style: TextStyle(
                                                fontSize: 11,
                                                color: Color(0xff990000),
                                              )),
                                          Theme(
                                            data: Theme.of(context).copyWith(
                                              unselectedWidgetColor:
                                                  Color(0xff990000),
                                            ),
                                            child: Radio(
                                              value: 4,
                                              groupValue: _radioSelected,
                                              activeColor: Colors.blue,
                                              onChanged: (value) {
                                                setState(() {
                                                  _radioSelected = value;
                                                });
                                              },
                                            ),
                                          ),
                                          Text('نعم',
                                              textAlign: TextAlign.right,
                                              style: TextStyle(
                                                fontSize: 11,
                                                color: Color(0xff990000),
                                              )),
                                        ],
                                      ),
                                      SizedBox(
                                        width: 10,
                                      ),
                                      Flexible(
                                        child: Text(
                                          'هل تتعامل مع تطبيقات توصيل ثانيه؟',
                                          textAlign: TextAlign.right,
                                          overflow: TextOverflow.ellipsis,
                                          style: TextStyle(
                                            fontSize: 11,
                                            fontWeight: FontWeight.bold,
                                            color: Color(0xff990000),
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              )
                            ],
                          )),
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 30,
            ),
            Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
              Image.asset('assets/forward_button.png'),
              Row(
                children: [
                  
                  Text(
                    'أضف متجر آخر',
                    textAlign: TextAlign.right,
                    overflow: TextOverflow.ellipsis,
                    style: TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.bold,
                      color: Color(0xff990000),
                    ),
                  ),
                  SizedBox(width: 10,),
                  CircleAvatar(
                                radius: 15,
                                backgroundColor: Color(0xff00EF60),
                                child: Icon(Icons.add,color: Colors.white,)
                              ),
                ],
              )
            ])
          ],
        ),
      ),
    );
  }
}
