import 'package:collection/collection.dart';
import 'package:flutter/material.dart';
import 'package:flutter_food_delivery_app/models/cart_item.dart';
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
      price: 10.99,
      category: FoodCategory.burgers,
      availableAddons: [
        Addon(name: 'Extra cheese', price: 0.2),
        Addon(name: 'Bacon', price: 1.2),
        Addon(name: 'Avocado', price: 2.2),
      ],
    ),
    Food(
      name: 'Classic Cheeseburger',
      description:
          'A juicy beef patty with melted cheddar, lettuce, tomato, and a hint of onion and pickle.',
      imagePath: 'assets/images/burger.jpg',
      price: 10.99,
      category: FoodCategory.burgers,
      availableAddons: [
        Addon(name: 'Extra cheese', price: 0.2),
        Addon(name: 'Bacon', price: 1.2),
        Addon(name: 'Avocado', price: 2.2),
      ],
    ),
    Food(
      name: 'Classic Cheeseburger',
      description:
          'A juicy beef patty with melted cheddar, lettuce, tomato, and a hint of onion and pickle.',
      imagePath: 'assets/images/burger.jpg',
      price: 10.99,
      category: FoodCategory.burgers,
      availableAddons: [
        Addon(name: 'Extra cheese', price: 0.2),
        Addon(name: 'Bacon', price: 1.2),
        Addon(name: 'Avocado', price: 2.2),
      ],
    ),
    Food(
      name: 'Classic Cheeseburger',
      description:
          'A juicy beef patty with melted cheddar, lettuce, tomato, and a hint of onion and pickle.',
      imagePath: 'assets/images/burger.jpg',
      price: 10.99,
      category: FoodCategory.burgers,
      availableAddons: [
        Addon(name: 'Extra cheese', price: 0.2),
        Addon(name: 'Bacon', price: 1.2),
        Addon(name: 'Avocado', price: 2.2),
      ],
    ),
    Food(
      name: 'Classic Cheeseburger',
      description:
          'A juicy beef patty with melted cheddar, lettuce, tomato, and a hint of onion and pickle.',
      imagePath: 'assets/images/burger.jpg',
      price: 10.99,
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
  // user cart
  final List<CartItem> _cart = [];
  // add to cart
  void addToCart(Food food, List<Addon> selectedAddons) {
    // see if there is a cart item already with the same food and selected addons
    CartItem? cartItem = _cart.firstWhereOrNull((item) {
      // see if there is a cart item already with the same food and selected addons
      bool isSameFood = item.food == food;
      // check if the food items are the same
      bool isSameAddons = ListEquality().equals(
        item.selectedAddons,
        selectedAddons,
      );
      return isSameFood && isSameAddons;
    });
    // if item already exists, increase it's quantity
    if (cartItem != null) {
      cartItem.quanitity++;
    } else {
      _cart.add(CartItem(food: food, selectedAddons: selectedAddons));
    }
    notifyListeners();
  }

  // remove from cart
  void removeFromCcart(CartItem cartItem) {
    int cartIndex = _cart.indexOf(cartItem);

    if (cartIndex != 1) {
      if (_cart[cartIndex].quanitity > 1) {
        _cart[cartIndex].quanitity--;
      } else {
        _cart.removeAt(cartIndex);
      }
    }
    notifyListeners();
  }

  // get total price of cart
  double getTotalPrice() {
    double total = 0.0;

    for (CartItem cartItem in _cart) {
      double itemTotal = cartItem.food.price;

      for (Addon addon in cartItem.selectedAddons) {
        itemTotal += addon.price;
      }
      total += itemTotal * cartItem.quanitity;
    }
    return total;
  }

  // get total number of items in cart
  int getTotalItemCount() {
    int totalItemCount = 0;

    for (CartItem cartItem in _cart) {
      totalItemCount += cartItem.quanitity;
    }
    return totalItemCount;
  }

  // clear cart
  void clearCart() {
    _cart.clear();
    notifyListeners();
  }
  /*
  H E L P E R S 
  */
  // generate a receipt
  // format double vaiue into money
  // format list of addons into a string summary
}
