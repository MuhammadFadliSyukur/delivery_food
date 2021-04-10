import 'package:delivery_food/models/popular_food_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../theme.dart';
import 'popular_food_card.dart';

class PopularFood extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView(
      physics: BouncingScrollPhysics(),
      children: [
        SizedBox(height: 30.h),
        Text(
          'Popular Food',
          style: blackTextStyle.copyWith(fontSize: 30.sp),
        ),
        SizedBox(height: edge.h),
        PopularFoodCard(
          popularFood: PopularFoodModel(
            imgUrl: 'assets/food_menu1.png',
            name: 'Pizza',
            category: 'Delicious food 2020',
            price: '49.999',
          ),
        ),
        SizedBox(height: edge.h),
        PopularFoodCard(
          popularFood: PopularFoodModel(
            imgUrl: 'assets/food_menu2.png',
            name: 'Humberger',
            category: 'Delicious food 2020',
            price: '59.999',
          ),
        ),
        SizedBox(height: edge.h),
        PopularFoodCard(
          popularFood: PopularFoodModel(
            imgUrl: 'assets/food_menu3.png',
            name: 'Double Hot Dog',
            category: 'Delicious food 2020',
            price: '34.999',
          ),
        ),
        SizedBox(height: 5 * edge.h),
      ],
    );
  }
}
