import 'package:flutter/material.dart';
import 'package:flutter_food_delivery_app/models/food.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class MyQuantitySelector extends StatelessWidget {
  final int quantity;
  final Food food;
  final VoidCallback onIncrement;
  final VoidCallback onDecrement;
  const MyQuantitySelector({
    super.key,
    required this.quantity,
    required this.food,
    required this.onIncrement,
    required this.onDecrement,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Theme.of(context).colorScheme.surface,
        borderRadius: BorderRadius.circular(50),
      ),
      padding: EdgeInsets.all(8.w),
      child: Row(
        mainAxisSize: .min,
        children: [
          // increment
          GestureDetector(
            onTap: onIncrement,
            child: Icon(Icons.add, size: 20.r),
          ),

          // quantity
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 8.0.w),
            child: SizedBox(
              width: 20.w,
              child: Center(child: Text(quantity.toString())),
            ),
          ),

          // decrement
          GestureDetector(
            onTap: onDecrement,
            child: Icon(Icons.remove, size: 20.r),
          ),
        ],
      ),
    );
  }
}
