import 'package:delivery_food/widgets/my_tab_bar.dart';
import 'package:delivery_food/widgets/popular_dessert.dart';
import 'package:delivery_food/widgets/popular_food.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../theme.dart';

class HomepageModel extends StatefulWidget {
  @override
  _HomepageModelState createState() => _HomepageModelState();
}

class _HomepageModelState extends State<HomepageModel>
    with TickerProviderStateMixin {
  TabController tabController;

  @override
  void initState() {
    tabController = TabController(length: 4, vsync: this);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    TextEditingController textController = TextEditingController();
    return DefaultTabController(
      length: 4,
      child: Scaffold(
        backgroundColor: whiteColor,
        body: SafeArea(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 30.w),
            child: Column(
              children: [
                SizedBox(height: edge.h),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    IconButton(onPressed: () {}, icon: Icon(Icons.reorder)),
                    IconButton(
                        onPressed: () {}, icon: Icon(Icons.shopping_basket)),
                  ],
                ),
                SizedBox(height: edge.h),
                Container(
                  padding: EdgeInsets.symmetric(horizontal: edge.w),
                  width: 315.w,
                  height: 50.h,
                  decoration: BoxDecoration(
                    color: greyColor,
                    borderRadius: BorderRadius.circular(12),
                  ),
                  child: TextFormField(
                    controller: textController,
                    decoration: InputDecoration(
                      hintText: 'Search',
                      hintStyle: TextStyle(fontSize: 12),
                      suffixIcon: Icon(Icons.search, size: 15),
                      border: OutlineInputBorder(
                        borderSide: BorderSide.none,
                      ),
                    ),
                  ),
                ),
                SizedBox(height: edge.h),
                MyTabBar(tabController: tabController),
                Expanded(
                  child: Container(
                    child: TabBarView(
                      controller: tabController,
                      children: [
                        PopularFood(),
                        PopularDessert(),
                        Center(child: Text('Drinks')),
                        Center(child: Text('Snack')),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
