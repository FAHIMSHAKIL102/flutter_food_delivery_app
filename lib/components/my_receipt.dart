import 'package:flutter/material.dart';
import 'package:flutter_food_delivery_app/models/restaurant.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:provider/provider.dart';

class MyReceipt extends StatelessWidget {
  const MyReceipt({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
        left: 25.w,
        right: 25.w,
        bottom: 25.h,
        top: 50.h,
      ),
      child: Center(
        child: Column(
          mainAxisAlignment: .center,
          children: [
            Text("Thanks you for Your order"),
            SizedBox(height: 25.h),
            Container(
              decoration: BoxDecoration(
                border: Border.all(
                  color: Theme.of(context).colorScheme.secondary,
                ),
                borderRadius: BorderRadius.circular(10),
              ),
              child: Padding(
                padding: EdgeInsets.all(25.0.w),
                child: Consumer<Restaurant>(
                  builder: (context, restaurant, child) {
                    return Text(restaurant.displayCartReceipt());
                  },
                ),
              ),
            ),

            SizedBox(height: 25.h),
            Text("Estimated delivery time is 4:10 PM"),
          ],
        ),
      ),
    );
  }
}
