import 'package:bubble_bottom_bar/bubble_bottom_bar.dart';
import 'package:delivery_food/models/homepage_model.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter/material.dart';

import '../theme.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int selectedIndex;
  @override
  void initState() {
    super.initState();

    selectedIndex = 0;
  }

  @override
  Widget build(BuildContext context) {
    List<Widget> _widgetOptions = <Widget>[
      HomepageModel(),
      Center(child: Text('Notification')),
      Center(child: Text('Favorite')),
      Center(child: Text('Profil')),
    ];

    changePage(int index) {
      setState(() {
        selectedIndex = index;
      });
    }

    return Scaffold(
      backgroundColor: whiteColor,
      body: _widgetOptions.elementAt(selectedIndex),
      extendBody: true,
      floatingActionButton: Container(
        width: 315.w,
        height: 70.h,
        margin: EdgeInsets.symmetric(horizontal: edge.w),
        child: BubbleBottomBar(
          backgroundColor: Color(0xffF6F7FB),
          opacity: 1,
          currentIndex: selectedIndex,
          onTap: changePage,
          borderRadius: BorderRadius.circular(30.r),
          elevation: 0, //new
          hasInk: true, //new, gives a cute ink effect
          inkColor:
              Colors.black12, //optional, uses theme color if not specified
          items: <BubbleBottomBarItem>[
            BubbleBottomBarItem(
              backgroundColor: greenColor,
              icon: Icon(
                Icons.home,
                color: darkGreyColor,
              ),
              activeIcon: Icon(Icons.home, color: whiteColor, size: 20),
              title: Text(
                "Home",
                style: TextStyle(color: whiteColor, fontSize: 12.sp),
              ),
            ),
            BubbleBottomBarItem(
              backgroundColor: greenColor,
              icon: Icon(
                Icons.notifications,
                color: darkGreyColor,
              ),
              activeIcon:
                  Icon(Icons.notifications, color: whiteColor, size: 20),
              title: Text(
                "Info",
                style: TextStyle(color: whiteColor, fontSize: 12.sp),
              ),
            ),
            BubbleBottomBarItem(
              backgroundColor: greenColor,
              icon: Icon(
                Icons.favorite,
                color: darkGreyColor,
              ),
              activeIcon: Icon(
                Icons.favorite,
                color: whiteColor,
                size: 20,
              ),
              title: Text(
                "Favorite",
                style: TextStyle(color: whiteColor, fontSize: 12.sp),
              ),
            ),
            BubbleBottomBarItem(
              backgroundColor: greenColor,
              icon: Icon(
                Icons.person_rounded,
                color: darkGreyColor,
              ),
              activeIcon: Icon(
                Icons.person_rounded,
                color: whiteColor,
                size: 20,
              ),
              title: Text(
                "Profile",
                style: TextStyle(color: whiteColor, fontSize: 12.sp),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
