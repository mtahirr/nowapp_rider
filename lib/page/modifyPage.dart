import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:now_app/page/homePage.dart';

class ModifyPage extends StatefulWidget {
  @override
  _ModifyPageState createState() => _ModifyPageState();
}

class _ModifyPageState extends State<ModifyPage> {
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
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Row(
                    children: [
                      Image.asset('assets/NoPath - Copy (44).png'),
                      Text("تعديل خاص الكاشير",
                          style: TextStyle(
                            fontSize: 15,
                            fontWeight: FontWeight.bold,
                          )),
                    ],
                  ),
                  SizedBox(
                    width: 50,
                  ),
                  Image.asset('assets/button.png')
                ],
              ),
            ),
            SizedBox(
              height: 30,
            ),
           _mycard('اسم الموظف 1','محمد'),
             _mycard('رقم الجوال','********'),
              _mycard('كلمة المرور ','********'),
               _mycard('تأكيد كلمة المرور ','********'),
                SizedBox(
              height: 30,
            ),
              _mycard('اسم الموظف 2','محمد'),
             _mycard('رقم الجوال','********'),
              _mycard('كلمة المرور ','********'),
               _mycard('تأكيد كلمة المرور ','********'),
          ],
        ),
      ),
    );
  }
  Widget _mycard(String text,text2){
    return  InkWell(
       onTap: () {
                Navigator.push(
                    context, MaterialPageRoute(builder: (ctx) => HomePage()));
              },
      child: Card(
        margin: EdgeInsets.only(top: 5),
                elevation: 3,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15)),
                child: Container(
                  padding: EdgeInsets.symmetric(vertical: 12,horizontal:15),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Icon(
                        Icons.keyboard_arrow_left_outlined,
                        color: Color(0xff990000),
                        size: 30,
                      ),
                      Text(
                        text2,
                         textAlign: TextAlign.right,
                        style: TextStyle(
                          fontSize: 14,
                          color: Color(0xff990000),
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                      SizedBox(width: 5,),
                      Text(
                        text,
                        textAlign: TextAlign.right,
                        style: TextStyle(
                          fontSize: 16,
                          color: Color(0xff979797),
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
    );
  }
}
