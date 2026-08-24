import 'package:flutter/material.dart';
import 'package:flutter_food_delivery_app/components/my_button.dart';
import 'package:flutter_food_delivery_app/models/food.dart';

class FoodPage extends StatefulWidget {
  final Food food;
  final Map<Addon, bool> seletedAddons = {};
  FoodPage({super.key, required this.food}) {
    // initialize selected addons to be false
    for (Addon addon in food.availableAddons) {
      seletedAddons[addon] = false;
    }
  }

  @override
  State<FoodPage> createState() => _FoodPageState();
}

class _FoodPageState extends State<FoodPage> {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        // Scaffold UI
        Scaffold(
          body: SingleChildScrollView(
            child: Column(
              children: [
                //food image
                SizedBox(child: Image.asset(widget.food.imagePath)),

                Padding(
                  padding: const EdgeInsets.all(25.0),
                  child: Column(
                    crossAxisAlignment: .start,
                    children: [
                      // food name
                      Text(
                        widget.food.name,
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      SizedBox(height: 10),
                      // food price
                      Text(
                        '\$${widget.food.price}',
                        style: TextStyle(
                          color: Theme.of(context).colorScheme.primary,
                        ),
                      ),
                      SizedBox(height: 10),
                      // food description
                      Text(
                        widget.food.description,
                        style: TextStyle(fontSize: 16),
                      ),
                      SizedBox(height: 10),
                      Divider(color: Theme.of(context).colorScheme.secondary),

                      // addons
                      Text(
                        'Add-ons',
                        style: TextStyle(
                          color: Theme.of(context).colorScheme.inversePrimary,
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      SizedBox(height: 10),
                      Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(8),
                          border: Border.all(
                            color: Theme.of(context).colorScheme.secondary,
                          ),
                        ),
                        child: ListView.builder(
                          padding: EdgeInsets.zero,
                          shrinkWrap: true,
                          physics: NeverScrollableScrollPhysics(),
                          itemCount: widget.food.availableAddons.length,
                          itemBuilder: (context, index) {
                            // get indiviual addon
                            Addon addon = widget.food.availableAddons[index];
                            // return check box UI
                            return CheckboxListTile(
                              title: Text(addon.name),
                              subtitle: Text('\$${addon.price}'),
                              value: widget.seletedAddons[addon],
                              onChanged: (bool? value) {
                                setState(() {
                                  widget.seletedAddons[addon] = value!;
                                });
                              },
                            );
                          },
                        ),
                      ),
                      SizedBox(height: 25),
                      // button -> add to cart
                      MyButton(text: 'Add to Cart', onTap: () {}),
                      SizedBox(height: 25),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
        // Back Button
        Container(
          margin: EdgeInsets.only(top: 50, left: 25),
          decoration: BoxDecoration(
            color: Theme.of(context).colorScheme.secondary,
            shape: BoxShape.circle,
          ),
          child: IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: Icon(Icons.arrow_back_ios_new_rounded),
          ),
        ),
      ],
    );
  }
}
