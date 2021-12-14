import 'package:flutter/material.dart';
import 'package:now_app/page/orders.dart';

class NotificationPage extends StatefulWidget {
 

  @override
  _NotificationPageState createState() => _NotificationPageState();
}

class _NotificationPageState extends State<NotificationPage> {
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
            height: 30,
          ),
          Container(
            padding: EdgeInsets.symmetric(horizontal: 20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Text(
                  'التنبيهات',
                  style: TextStyle(
                    fontWeight: FontWeight.w600,
                    fontSize: 18,
                  ),
                ),
                SizedBox(
                  width: 80,
                ),
                Image.asset('assets/button.png')
              ],
            ),
          ),
          SizedBox(
            height: 20,
          ),
         _myContianer('تم استلام الطلب وجاري التنفيذ',),
          SizedBox(
            height: 10,
          ),
           _myContianer('تم السداد من قبل العميل',),
            SizedBox(
            height: 10,
          ),
           _myContianer('تم تحويل المبغ من قبل البرنامج',),
            SizedBox(
            height: 10,
          ),
           _myContianer('تم رفع شكوى , وجاري المراجعة والرد في اقرب وقت',),
          ],
        ),
      ),
      
    );
  }
  Widget _myContianer(String text){
    return  InkWell(
      onTap: (){
        Navigator.push(context, MaterialPageRoute(builder: (ctx)=>OrdersPage()));
      },
      child: Card(
              elevation: 3,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20)),
              child: Container(
                padding: EdgeInsets.only(top: 3),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                     Text(
                  text,
                  textAlign: TextAlign.right,
                  style: TextStyle(
                    fontSize: 13,
                    color: Color(0xff990000),
                    fontWeight: FontWeight.w600,
                  ),
                ),
                    Image.asset('assets/alarm.png'),
                     
                  ],
                ),
              ),
            ),
    );
  }
}