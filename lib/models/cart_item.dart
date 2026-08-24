import 'package:flutter_food_delivery_app/models/food.dart';

class CartItem {
  Food food;
  List<Addon> selectedAddons;
  int quanitity;

  CartItem({
    required this.food,
    required this.selectedAddons,
    this.quanitity = 1,
  });

  double get totalPrice {
    double addonsPrice = selectedAddons.fold(
      0,
      (sum, addon) => sum + addon.price,
    );
    return (food.price + addonsPrice) * quanitity;
  }
}
