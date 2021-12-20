import 'package:flutter/material.dart' show BorderRadius, BuildContext, Card, Center, CircleAvatar, ClipRRect, Color, Colors, Container, EdgeInsets, FloatingActionButtonLocation, Image, InkWell, NeverScrollableScrollPhysics, Padding, Radius, RoundedRectangleBorder, Scaffold, SingleTickerProviderStateMixin, State, StatefulWidget, Tab, TabBar, TabBarView, TabController, Text, TextAlign, TextStyle, Widget;
import 'package:now_app/page/homePage.dart';
import 'package:now_app/page/notification.dart';
import 'package:now_app/page/orders.dart';
import 'package:now_app/page/wishlist.dart';


class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage>
    with SingleTickerProviderStateMixin {
  TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 4, vsync: this);
  }

  @override
  void dispose() {
    super.dispose();
    _tabController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
     floatingActionButtonLocation:    
      FloatingActionButtonLocation.centerDocked,
      floatingActionButton:  InkWell(
                      onTap: () {
                        
                      },
                      child: Card(
                        elevation: 5,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(55)),
                        child: CircleAvatar(
                          radius: 35,
                          backgroundColor: Colors.white,
                          child: CircleAvatar(
                            radius: 33,
                            backgroundColor: Color(0xff35DDDE),
                            child: Center(
                              child: Text(
                                'نعم',
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                    color: Colors.white, fontSize: 20),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
      body: TabBarView(
        children: <Widget>[
          HomePage(),
          NotificationPage(),
          OrdersPage(),
         
          WishListPage(),
        ],
        // If you want to disable swiping in tab the use below code
        physics: NeverScrollableScrollPhysics(),
        controller: _tabController,
      ),
      bottomSheet: Padding(
        padding: const EdgeInsets.all(8.0),
        child: ClipRRect(
          borderRadius: BorderRadius.all(
            Radius.circular(50.0),
          ),
          child: Container(
            color: Color(0xff28476E),
            child: TabBar(
              labelColor: Color(0xff35DDDE),
              unselectedLabelColor: Colors.white,
              labelStyle: TextStyle(fontSize: 10.0),
                
              //For Indicator Show and Customization
              indicatorColor: Colors.black54,
              tabs: <Widget>[
                Tab(
                  icon: CircleAvatar(
                      backgroundColor: Colors.white,
                      radius: 20,
                    child: Image.asset('assets/Group 608.png')
                  ),
                  text: 'الرئيسية',
                ),
                Tab(
                  icon: CircleAvatar(
                      backgroundColor: Colors.white,
                      radius: 20,
                      child: Image.asset('assets/2.png')),
                  text: 'الحجوزات',
                ),
               
                Tab(
                  icon: CircleAvatar(
                      backgroundColor: Colors.white,
                      radius: 20,
                      child: Image.asset('assets/sports-car.png')),
                  text: 'المركبات',
                ),
                Tab(
                  icon: CircleAvatar(
                      backgroundColor: Colors.white,
                      radius: 20,
                      child: Image.asset('assets/peson.png')),
                  text: 'الحساب',
                ),
              ],
              controller: _tabController,
            ),
          ),
        ),
      ),
    );
  }
}
