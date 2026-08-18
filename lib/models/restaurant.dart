import 'package:flutter/material.dart';
import 'package:flutter_food_delivery_app/models/food.dart';

class Restaurant with ChangeNotifier {
  // list of food menu
  final List<Food> _menu = [
    // burgers
    Food(
      name: 'Classic Cheeseburger',
      description:
          'A juicy beef patty with melted cheddar, lettuce, tomato, and a hint of onion and pickle.',
      imagePath: 'assets/images/burger.jpg',
      price: 0.99,
      category: FoodCategory.burgers,
      availableAddons: [
        Addon(name: 'Extra cheese', price: 0.2),
        Addon(name: 'Bacon', price: 1.2),
        Addon(name: 'Avocado', price: 2.2),
      ],
    ),

    // salads
    Food(
      name: 'Caesar Salad',
      description:
          'Crisp romaine lettice, parmesan cheese, croutos, and caesar dressing',
      imagePath: 'assets/images/salad.jpg',
      price: 7.99,
      category: FoodCategory.salads,
      availableAddons: [
        Addon(name: 'Grilled Chicken', price: 0.99),
        Addon(name: 'Anchovies', price: 1.29),
        Addon(name: 'Avocado', price: 2.2),
      ],
    ),
    // sides
    Food(
      name: 'Sweet Potato Fries',
      description: 'Crispy sweet potato fries with a touch of salt',
      imagePath: 'assets/images/sides.jpg',
      price: 4.99,
      category: FoodCategory.sides,
      availableAddons: [
        Addon(name: 'Cheese Sauce', price: 0.99),
        Addon(name: 'Truffle Oil', price: 1.49),
        Addon(name: 'Cajun Spice', price: 1.99),
      ],
    ),
    // desserts
    Food(
      name: 'Cheese Cake ',
      description:
          'Creamy cheesecake on a graham cracker crust with a berry compote',
      imagePath: 'assets/images/dessert.jpg',
      price: 6.99,
      category: FoodCategory.desserts,
      availableAddons: [
        Addon(name: 'Strawberry Topping', price: 0.99),
        Addon(name: 'Blueberry Compotr', price: 1.49),
        Addon(name: 'Chocolate Chips', price: 2.99),
      ],
    ),
    // drinks
    Food(
      name: 'Chocolate Milk Shake',
      description:
          'A blend of fresh fruits and yogurt, perfect for a healthy boost',
      imagePath: 'assets/images/drinks.jpg',
      price: 4.99,
      category: FoodCategory.drinks,
      availableAddons: [
        Addon(name: 'Protein Powder', price: 0.99),
        Addon(name: 'Almond Milk', price: 1.2),
        Addon(name: 'Chia Seeds', price: 2.2),
      ],
    ),
  ];

  /*
  G E T T E R S
   */
  List<Food> get menu => _menu;
  /* 
  O P E R A T I O N S
  */
  // add to cart
  // remove from cart
  // get total price of cart
  // get total number of items in cart
  // clear cart
  /*
  H E L P E R S 
  */
  // generate a receipt
  // format double vaiue into money
  // format list of addons into a string summary
}
