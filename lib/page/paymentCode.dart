import 'package:flutter/material.dart';

class PayMethodPage extends StatefulWidget {
 

  @override
  _PayMethodPageState createState() => _PayMethodPageState();
}

class _PayMethodPageState extends State<PayMethodPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
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
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      Image.asset('assets/cart.png'),
                        Row(children: [
                          Text(
                            'ريال',
                            textAlign: TextAlign.right,
                            style: TextStyle(
                                fontSize: 13,color: Color(0xff990000),),
                          ),
                          Text(
                            '90',
                            style: TextStyle(
                                fontSize: 13, color: Color(0xff990000),),
                          )
                        ]),
                    ],
                  ),
                  Image.asset('assets/Group 485.png'),
                 Image.asset('assets/button.png')
                ],
              ),
              SizedBox(
                height: 20,
              ),
         Text(
                      'ادخل الرمز المرسل ',
                      style: TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                     Card(
                  elevation: 8,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10)),
                  child: Container(
                    padding: EdgeInsets.symmetric(horizontal: 10),
                    child: TextField(
                        textAlign: TextAlign.center,
                        decoration: InputDecoration(
                            isDense: true,
                            border: InputBorder.none,
                            hintText: 'رمز التحقق',
                            hintStyle: TextStyle(color: Color(0xffB5B5B5)))),
                  ),
                ),
                InkWell(
                  onTap: () {
                    // Navigator.push(context,
                    //     MaterialPageRoute(builder: (ctx) => Confirm()));
                  },
                  child: Container(
                    padding: EdgeInsets.symmetric(vertical: 5),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Color(0xff0070BA),
                    ),
                    child: Center(
                      child: Text(
                        'اضافة',
                        style: TextStyle(color: Colors.white, fontSize: 20),
                      ),
                    ),
                  ),
                )
              ]),
            ),
      )
        );
   
  }
}