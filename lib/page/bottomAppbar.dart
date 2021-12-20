import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:now_app/page/notification.dart';
import 'package:now_app/page/orders.dart';
import 'package:now_app/page/wishlist.dart';

import 'homePage.dart';

class BottomApp extends StatefulWidget {
  @override
  _BottomAppState createState() => _BottomAppState();
}

class _BottomAppState extends State<BottomApp> {
  int index = 0;
  final List<Widget> screens = [
    HomePage(),
    NotificationPage(),
    OrdersPage(),
    WishListPage(),
   
  ];
  final PageStorageBucket bucket = PageStorageBucket();
  Widget curentScreen = HomePage();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomAppBar(
        child: Container(
          padding: EdgeInsets.symmetric(horizontal:15),
          height: 60,
          width: MediaQuery.of(context).size.width,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              InkWell(
                onTap: () {
                  setState(() {
                    curentScreen = HomePage();
                    index = 0;
                  });
                },
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image.asset('assets/docs.png'),
                    Text(
                      "التنبيهات",
                      style: TextStyle(
                        color: index == 0 ? Color(0xff7c5aa7) : Colors.grey,
                      ),
                    ),
                  ],
                ),
              ),
              InkWell(
                onTap: () {
                  setState(() {
                    curentScreen = NotificationPage();
                    index = 1;
                  });
                },
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image.asset('assets/notfy.png'),
                    Text(
                      "متاجر",
                      style: TextStyle(
                        color: index == 1 ? Color(0xff7c5aa7) : Colors.grey,
                      ),
                    )
                  ],
                ),
              ),
              InkWell(
                onTap: () {
                  setState(() {
                    curentScreen = HomePage();
                    index = 2;
                  });
                },
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image.asset('assets/sports-car.png',),
                    Text(
                      "اعلانات",
                      style: TextStyle(
                        color: index == 2 ? Color(0xff7c5aa7) : Colors.grey,
                      ),
                    ),
                  ],
                ),
              ),
              InkWell(
                onTap: () {
                  setState(() {
                    curentScreen = WishListPage();
                    index = 3;
                  });
                },
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image.asset('assets/cart.png',color: Colors.black,),
                    Text(
                      "الحساب",
                      style: TextStyle(
                        color: index == 3 ? Color(0xff7c5aa7) : Colors.grey,
                      ),
                    ),
                  ],
                ),
              ),
              
            ],
          ),
        ),
      ),
      body: PageStorage(bucket: bucket, child: curentScreen),
    );
  }
}
