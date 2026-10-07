import 'package:flutter/material.dart';
import 'package:flutter_food_delivery_app/components/my_quantity_selector.dart';
import 'package:flutter_food_delivery_app/models/cart_item.dart';
import 'package:flutter_food_delivery_app/models/restaurant.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:provider/provider.dart';

class MyCartTile extends StatelessWidget {
  final CartItem cartItem;
  const MyCartTile({super.key, required this.cartItem});

  @override
  Widget build(BuildContext context) {
    return Consumer<Restaurant>(
      builder: (context, restaurant, child) {
        return Container(
          margin: EdgeInsets.symmetric(horizontal: 25.w, vertical: 10.h),
          decoration: BoxDecoration(
            color: Theme.of(context).colorScheme.secondary,
            borderRadius: BorderRadius.circular(8.r),
          ),
          child: Column(
            children: [
              Padding(
                padding: EdgeInsets.all(8.0.w),
                child: Row(
                  children: [
                    // food image
                    ClipRRect(
                      borderRadius: BorderRadiusGeometry.circular(8),
                      child: Image.asset(
                        cartItem.food.imagePath,
                        height: 100.h,
                        width: 100.w,
                      ),
                    ),
                    SizedBox(width: 10.w),

                    // name and price
                    Column(
                      crossAxisAlignment: .start,
                      mainAxisAlignment: .start,
                      children: [
                        // food name
                        Text(cartItem.food.name),
                        // food price
                        Text('\$${cartItem.food.price}'),
                        SizedBox(height: 10.h),

                        // increment or decrement quantity
                        MyQuantitySelector(
                          quantity: cartItem.quanitity,
                          food: cartItem.food,
                          onIncrement: () {
                            restaurant.addToCart(
                              cartItem.food,
                              cartItem.selectedAddons,
                            );
                          },
                          onDecrement: () {
                            restaurant.removeFromCart(cartItem);
                          },
                        ),
                      ],
                    ),

                    const Spacer(),
                  ],
                ),
              ),
              // addons
              SizedBox(
                height: cartItem.selectedAddons.isEmpty ? 0 : 60.h,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  padding: EdgeInsets.only(
                    left: 10.w,
                    bottom: 10.h,
                    right: 10.w,
                  ),
                  children: cartItem.selectedAddons
                      .map(
                        (addon) => Padding(
                          padding: EdgeInsets.only(right: 8.0.w),
                          child: FilterChip(
                            label: Row(
                              children: [
                                // addon name
                                Text(addon.name),

                                // addon price
                                Text('(\$${addon.price})'),
                              ],
                            ),
                            shape: StadiumBorder(
                              side: BorderSide(
                                color: Theme.of(context).colorScheme.primary,
                              ),
                            ),
                            onSelected: (value) {},
                            backgroundColor: Theme.of(
                              context,
                            ).colorScheme.secondary,
                            labelStyle: TextStyle(
                              color: Theme.of(
                                context,
                              ).colorScheme.inversePrimary,
                              fontSize: 12.sp,
                            ),
                          ),
                        ),
                      )
                      .toList(),
                ),
              ),
            ],
          ),
        );
      },
    );
  }
}
