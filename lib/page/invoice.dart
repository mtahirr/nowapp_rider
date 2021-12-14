import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:now_app/page/listPage.dart';

class InvoiceImagePage extends StatefulWidget {
  @override
  _InvoiceImagePageState createState() => _InvoiceImagePageState();
}

class _InvoiceImagePageState extends State<InvoiceImagePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          children: [
            SizedBox(
              height: 30,
            ),
            Container(
              padding: EdgeInsets.symmetric(horizontal: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Text(
                    'صورة الفاتورة',
                    style: TextStyle(
                      fontWeight: FontWeight.w600,
                      fontSize: 18,
                    ),
                  ),
                  SizedBox(
                    width: 60,
                  ),
                  InkWell(
                      onTap: () {
                        // Navigator.push(context, MaterialPageRoute(builder: (ctx)=>StoreRegister()));
                      },
                      child: Image.asset('assets/button.png'))
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
                  'تكلفة المشتريات',
                  textAlign: TextAlign.right,
                  style: TextStyle(
                    fontWeight: FontWeight.w600,
                    fontSize: 18,
                  ),
                ),
                
              ],
            ),
            SizedBox(
              height: 15,
            ),
            Container(
              padding: EdgeInsets.symmetric(horizontal: 10),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                border: Border.all(
                  color: Color(0xff990000),
                ),
              ),
              child: TextFormField(
                textAlign: TextAlign.right,
                decoration: InputDecoration(
                  prefixIcon: Image.asset('assets/NoPath.png'),
                  border: InputBorder.none,
                  hintText: 'ادخل تكلفة البضاعة',
                  hintStyle: TextStyle(
                    fontSize: 15,
                    color: Color(0xff949494),
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
             SizedBox(
              height: 20,
            ),
              Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  '--',
                  textAlign: TextAlign.right,
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 15,
                  ),
                ),
                
                Text(
                  'قيمة المشتريات',
                  textAlign: TextAlign.right,
                  style: TextStyle(
                    fontWeight: FontWeight.w600,
                    fontSize: 15,
                  ),
                ),
                
              ],
            ),
            Divider(
              
              color: Color(0xffFFB4B4),
            ),
           Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    Text(
                      'ر.س',
                      textAlign: TextAlign.right,
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 15,
                      ),
                    ),
                    Text(
                      ' 82.20',
                      textAlign: TextAlign.right,
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 15,
                      ),
                    ),
                  ],
                ),
                
                Text(
                  'تكلفة التوصيل + ضريبة',
                  textAlign: TextAlign.right,
                  style: TextStyle(
                    fontWeight: FontWeight.w600,
                    fontSize: 15,
                  ),
                ),
                
              ],
            ),
               Divider(
             
              color: Color(0xffFFB4B4),
            ),
             Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Text(
                  'محلق',
                  textAlign: TextAlign.right,
                  style: TextStyle(
                    fontWeight: FontWeight.w600,
                    fontSize: 18,
                  ),
                ),
                
              ],
            ),
              Row(
                 mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Container(
                  padding: EdgeInsets.symmetric(horizontal: 10,vertical: 10),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    border: Border.all(
                      color: Color(0xff990000),
                    ),
                  ),
                  child: Image.asset('assets/add.png'),
                  ),
                ],
              ),
              Spacer(),
              InkWell(
                      onTap: () {
                        Navigator.push(context, MaterialPageRoute(builder: (ctx)=>ListPage()));
                      },
                      child: Container(
                          margin: EdgeInsets.symmetric(horizontal: 100),
                          padding: EdgeInsets.only(bottom: 15, top: 5),
                          decoration: BoxDecoration(
                              image: DecorationImage(
                                  image: AssetImage('assets/Rectangle 18.png'),
                                  fit: BoxFit.fill)),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                             
                            
                              Text(
                                'تم',
                                style: TextStyle(
                                  fontSize: 16,
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ],
                          )),
                    ),
          ],
        ),
      ),
    );
  }
}
