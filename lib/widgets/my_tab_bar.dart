import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../theme.dart';

class MyTabBar extends StatelessWidget {
  const MyTabBar({
    Key key,
    @required this.tabController,
  }) : super(key: key);

  final TabController tabController;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        TabBar(
          labelColor: greenColor,
          unselectedLabelColor: darkGreyColor,
          labelStyle: TextStyle(fontSize: 14.sp),
          indicator: BoxDecoration(
            border: Border(
              bottom: BorderSide(
                color: greenColor,
                width: 3.w,
              ),
            ),
          ),
          isScrollable: true,
          controller: tabController,
          tabs: [
            Tab(icon: Text('Fast Food', style: mediumTextStyle)),
            Tab(icon: Text('Dessert', style: mediumTextStyle)),
            Tab(icon: Text('Drinks', style: mediumTextStyle)),
            Tab(icon: Text('Snacks', style: mediumTextStyle)),
          ],
        ),
      ],
    );
  }
}
