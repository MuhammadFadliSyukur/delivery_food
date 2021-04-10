import 'package:delivery_food/models/popular_dessert_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../theme.dart';

class PopularDessertCard extends StatelessWidget {
  final PopularDessertModel popularDessert;

  PopularDessertCard({this.popularDessert});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 315.w,
      height: 120.h,
      decoration: BoxDecoration(
        color: greyColor,
        borderRadius: BorderRadius.circular(12),
      ),
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: edge.w),
        child: Row(
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(100),
              child: Image.asset(
                popularDessert.imgUrl,
                width: 70.w,
                height: 70.h,
                fit: BoxFit.cover,
              ),
            ),
            SizedBox(width: 18.w),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(popularDessert.name, style: blackTextStyle),
                Text(
                  popularDessert.category,
                  style: TextStyle(
                      color: darkGreyColor,
                      fontSize: 12.sp,
                      fontWeight: FontWeight.w500),
                ),
                SizedBox(height: 7.h),
                Text('IDR ${popularDessert.price}', style: blackTextStyle),
              ],
            )
          ],
        ),
      ),
    );
  }
}
