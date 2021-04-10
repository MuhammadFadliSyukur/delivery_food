import 'package:delivery_food/models/popular_dessert_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../theme.dart';
import 'popular_dessert_card.dart';

class PopularDessert extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView(
      physics: BouncingScrollPhysics(),
      children: [
        SizedBox(height: 30.h),
        Text(
          'Popular Dessert',
          style: blackTextStyle.copyWith(fontSize: 30.sp),
        ),
        SizedBox(height: edge.h),
        PopularDessertCard(
          popularDessert: PopularDessertModel(
            imgUrl: 'assets/dessert_menu1.jpg',
            name: 'Ice Cream Cocho',
            category: 'Delicious dessert 2020',
            price: '29.999',
          ),
        ),
        SizedBox(height: edge.h),
        PopularDessertCard(
          popularDessert: PopularDessertModel(
            imgUrl: 'assets/dessert_menu2.jpg',
            name: 'Wafle with Fruits',
            category: 'Delicious dessert 2020',
            price: '19.999',
          ),
        ),
        SizedBox(height: edge.h),
        PopularDessertCard(
          popularDessert: PopularDessertModel(
            imgUrl: 'assets/dessert_menu3.jpg',
            name: 'Rainbow Cake',
            category: 'Delicious dessert 2020',
            price: '24.999',
          ),
        ),
        SizedBox(height: 5 * edge.h),
      ],
    );
  }
}
