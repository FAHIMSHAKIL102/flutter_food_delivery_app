import 'package:flutter/material.dart';
import 'package:flutter_food_delivery_app/models/food.dart';

class MyFoodTile extends StatelessWidget {
  final Food food;
  final Function()? onTap;
  const MyFoodTile({super.key, required this.food, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        GestureDetector(
          onTap: onTap,
          child: Row(
            children: [
              // text food details
              Expanded(
                child: Column(
                  children: [
                    Text(food.name),
                    Text(
                      '\$' + food.price.toString(),
                      style: TextStyle(
                        color: Theme.of(context).colorScheme.primary,
                      ),
                    ),
                    Text(
                      food.description,
                      style: TextStyle(
                        color: Theme.of(context).colorScheme.primary,
                      ),
                    ),
                  ],
                ),
              ),
              // food image
              ClipRRect(borderRadius: BorderRadius.circular(8),
                child: Image.asset(food.imagePath, height: 120)),
            ],
          ),
        ),
      ],
    );
  }
}
