import 'package:flutter/material.dart';
import 'package:flutter_food_delivery_app/models/restaurant.dart';
import 'package:provider/provider.dart';

class MyReceipt extends StatelessWidget {
  const MyReceipt({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 25, right: 25, bottom: 25, top: 50),
      child: Center(
        child: Column(
          mainAxisAlignment: .center,
          children: [
            Text("Thanks you for Your order"),
            SizedBox(height: 25),
            Container(
              decoration: BoxDecoration(
                border: Border.all(
                  color: Theme.of(context).colorScheme.secondary,
                ),
                borderRadius: BorderRadius.circular(10),
              ),
              child: Padding(
                padding: const EdgeInsets.all(25.0),
                child: Consumer<Restaurant>(
                  builder: (context, restaurant, child) {
                    return Text(restaurant.displayCartReceipt());
                  },
                ),
              ),
            ),

            SizedBox(height: 25,),
             Text("Estimated delivery time is 4:10 PM"),
          ],
        ),
      ),
    );
  }
}
