import 'package:collection/collection.dart';
import 'package:fazfood/models/cart_items.dart';
import 'package:fazfood/models/food.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class Restaurant extends ChangeNotifier {
  final List<Food> _menu = [
    // burgers
    Food(
        name: 'Classic Cheeseburger',
        category: FoodCategory.burgers,
        imagePath: 'lib/images/burger/ClassicCheeseburger.jpg',
        description:
            'Smashed beef patty with cheddar cheese and your choice of toppings and sauce. Served on a toasted brioche bun.',
        price: 36,
        availableAddons: [
          Addon(name: 'Mayonnaise', price: 1),
          Addon(name: 'Ketchup', price: 0.5),
          Addon(name: 'BBQ Sauce', price: 0.5),
        ]),

    Food(
        name: 'Chicken Burger',
        category: FoodCategory.burgers,
        imagePath: 'lib/images/burger/ChickenBurger.jpg',
        description:
            'Fried chicken patty with your choice of toppings, sauce, and cheese.',
        price: 34,
        availableAddons: [
          Addon(name: 'Mayonnaise', price: 1),
          Addon(name: 'Ketchup', price: 0.5),
          Addon(name: 'BBQ Sauce', price: 0.5),
        ]),

    Food(
        name: 'Classic Hamburger',
        category: FoodCategory.burgers,
        imagePath: 'lib/images/burger/ClassicHamburger.jpg',
        description:
            'Smashed beef patty with your choice of toppings and sauce. Served on a toasted brioche bun.',
        price: 36,
        availableAddons: [
          Addon(name: 'Mayonnaise', price: 1),
          Addon(name: 'Ketchup', price: 0.5),
          Addon(name: 'BBQ Sauce', price: 0.5),
        ]),

    Food(
        name: 'Honey Mustard Chicken Burger',
        category: FoodCategory.burgers,
        imagePath: 'lib/images/burger/HoneyMustardChickenBurger.jpg',
        description:
            'Fried chicken patty with cheddar cheese, leafy lettuce, sour dill pickles, honey mustard and mayo. Served on a toasted potato bun.',
        price: 34,
        availableAddons: [
          Addon(name: 'Mayonnaise', price: 1),
          Addon(name: 'Ketchup', price: 0.5),
          Addon(name: 'BBQ Sauce', price: 0.5),
        ]),

    Food(
        name: 'Cole Slaw Chicken Burger',
        category: FoodCategory.burgers,
        imagePath: 'lib/images/burger/ColeSlawChickenBurger.jpg',
        description:
            'Fried chicken patty with coleslaw, sour dill pickles, and thousand islands sauce. Served on a toasted potato bun.',
        price: 36,
        availableAddons: [
          Addon(name: 'Mayonnaise', price: 1),
          Addon(name: 'Ketchup', price: 0.5),
          Addon(name: 'BBQ Sauce', price: 0.5),
        ]),

    // deserts

    Food(
        name: 'Pecanbon',
        category: FoodCategory.deserts,
        imagePath: 'lib/images/deserts/Pecanbon.jpg',
        description:
            'Our world-famous cinnamon rolls swirled with our signature cream cheese frosting, caramel sauce and pecan nuts.',
        price: 19,
        availableAddons: [
          Addon(name: 'Caramel Sauce', price: 0.5),
          Addon(name: 'Pecan Nuts', price: 0.5),
          Addon(name: 'Cinnamon Sugar', price: 0.5),
        ]),

    Food(
        name: 'Pecanbites',
        category: FoodCategory.deserts,
        imagePath: 'lib/images/deserts/Pecanbites.jpg',
        description:
            'Our irresistible cinnamon rolls swirled with our signature cream cheese frosting, caramel sauce and pecan nuts in one perfect size.',
        price: 18,
        availableAddons: [
          Addon(name: 'Caramel Sauce', price: 0.5),
          Addon(name: 'Pecan Nuts', price: 0.5),
          Addon(name: 'Cinnamon Sugar', price: 0.5),
        ]),

    Food(
        name: 'Chocobon',
        category: FoodCategory.deserts,
        imagePath: 'lib/images/deserts/Chocobon.jpg',
        description:
            'Our world-famous cinnamon rolls swirled with our signature cream cheese frosting and Chocolate sauce.',
        price: 18,
        availableAddons: [
          Addon(name: 'Caramel Sauce', price: 0.5),
          Addon(name: 'Pecan Nuts', price: 0.5),
          Addon(name: 'Cinnamon Sugar', price: 0.5),
        ]),

    Food(
        name: 'Chocobites',
        category: FoodCategory.deserts,
        imagePath: 'lib/images/deserts/Chocobites.jpg',
        description:
            'Our irresistible cinnamon rolls swirled with our signature cream cheese frosting and chocolate sauce in one perfect size.',
        price: 17,
        availableAddons: [
          Addon(name: 'Caramel Sauce', price: 0.5),
          Addon(name: 'Pecan Nuts', price: 0.5),
          Addon(name: 'Cinnamon Sugar', price: 0.5),
        ]),

    Food(
        name: 'Cinnabites',
        category: FoodCategory.deserts,
        imagePath: 'lib/images/deserts/Cinnabites.jpg',
        description:
            'Our irresistible cinnamon rolls swirled with our signature cream cheese frosting in one perfect size.',
        price: 16,
        availableAddons: [
          Addon(name: 'Caramel Sauce', price: 0.5),
          Addon(name: 'Pecan Nuts', price: 0.5),
          Addon(name: 'Cinnamon Sugar', price: 0.5),
        ]),

    Food(
        name: 'Single Classic Combo',
        category: FoodCategory.deserts,
        imagePath: 'lib/images/deserts/SingleClassicCombo.jpg',
        description:
            'Your Choice of any Classic Cinnabon and Hot or Cold Drink..',
        price: 28,
        availableAddons: [
          Addon(name: 'Americano Reg', price: 0.0),
          Addon(name: 'Mocha Reg', price: 0.0),
          Addon(name: 'Cappuccino Reg', price: 0.0),
          Addon(name: 'Latte Reg', price: 0.0),
        ]),

    // drinks

    Food(
        name: 'Cocktail Juice',
        category: FoodCategory.drinks,
        imagePath: 'lib/images/drinks/CocktailJuice.jpg',
        description: 'Made with a blend of seasonal fruits.',
        price: 25.0,
        availableAddons: [
          Addon(name: 'Watermelon', price: 1),
          Addon(name: 'Orange', price: 1.5),
          Addon(name: 'Apple', price: 2),
        ]),

    Food(
        name: 'Avocado Juice',
        category: FoodCategory.drinks,
        imagePath: 'lib/images/drinks/AvocadoJuice.jpg',
        description: 'A refreshing beverage made from blended avocado.',
        price: 25.0,
        availableAddons: [
          Addon(name: 'Watermelon', price: 1),
          Addon(name: 'Orange', price: 1.5),
          Addon(name: 'Apple', price: 2),
        ]),

    Food(
        name: 'Pomegranate Juice',
        category: FoodCategory.drinks,
        imagePath: 'lib/images/drinks/PomegranateJuice.jpg',
        description:
            'Made from carefully selected, ripe pomegranates, it\'s a perfect balance of sweet and tangy that\'s packed with antioxidants.',
        price: 22.0,
        availableAddons: [
          Addon(name: 'Watermelon', price: 1),
          Addon(name: 'Orange', price: 1.5),
          Addon(name: 'Apple', price: 2),
        ]),

    Food(
        name: 'Mango Juice',
        category: FoodCategory.drinks,
        imagePath: 'lib/images/drinks/MangoJuice.jpg',
        description:
            'Made from fresh, ripe mangos, for perfect balance of sweetness and tanginess.',
        price: 22.0,
        availableAddons: [
          Addon(name: 'Watermelon', price: 1),
          Addon(name: 'Orange', price: 1.5),
          Addon(name: 'Apple', price: 2),
        ]),

    Food(
        name: 'Watermelon Juice',
        category: FoodCategory.drinks,
        imagePath: 'lib/images/drinks/WatermelonJuice.jpg',
        description: 'Made with a fresh watermelon.',
        price: 22.0,
        availableAddons: [
          Addon(name: 'Watermelon', price: 1),
          Addon(name: 'Orange', price: 1.5),
          Addon(name: 'Apple', price: 2),
        ]),

    // Salads

    Food(
        name: 'The Firebird',
        category: FoodCategory.salads,
        imagePath: 'lib/images/salads/TheFirebird.jpg',
        description:
            'A dynamic blend of mixed greens, cajun chicken, roasted peanuts, cashew nuts, roasted broccoli, fresh red chili, shredded carrots and ginger garnished with spring onions, cilantro, and toasted sesame seeds. Served with a choice of dressing.',
        price: 43.0,
        availableAddons: [
          Addon(name: 'Teriyaki Beef', price: 5.0),
          Addon(name: 'Roasted Pumpkin Cubes', price: 1.0),
          Addon(name: 'Cilantro', price: 1.0),
          Addon(name: 'Honey Ginger', price: 2.0)
        ]),

    Food(
        name: 'The Orchard',
        category: FoodCategory.salads,
        imagePath: 'lib/images/salads/TheOrchard.jpg',
        description:
            'Delight in a refreshing mix of fresh figs, orange cubes, toasted walnuts, feta cheese, and dried cranberries served on a bed of mixed greens. Served with a choice of dressing.',
        price: 43.0,
        availableAddons: [
          Addon(name: 'Teriyaki Beef', price: 5.0),
          Addon(name: 'Roasted Pumpkin Cubes', price: 1.0),
          Addon(name: 'Cilantro', price: 1.0),
          Addon(name: 'Honey Ginger', price: 2.0)
        ]),

    Food(
        name: 'Soba Crunch',
        category: FoodCategory.salads,
        imagePath: 'lib/images/salads/SobaCrunch.jpg',
        description:
            'Dive into world of vibrant flavours. Soba noodles, edamame, mixed greens, purple and white cabbage, shredded carrots, charred corn, toasted peanuts garnished with toasted sesame seeds, spring onions, and cilantro.',
        price: 39.0,
        availableAddons: [
          Addon(name: 'Teriyaki Beef', price: 5.0),
          Addon(name: 'Roasted Pumpkin Cubes', price: 1.0),
          Addon(name: 'Cilantro', price: 1.0),
          Addon(name: 'Honey Ginger', price: 2.0)
        ]),

    Food(
        name: 'The Oasis',
        category: FoodCategory.salads,
        imagePath: 'lib/images/salads/TheOasis.jpg',
        description:
            'Escape to freshness with goat cheese, cherry tomatoes, toasted wallnuts, dried cranberries, mixed greens, shredded carrots, mixed quinoa and nachos. Served with a choice of dressing.',
        price: 43.0,
        availableAddons: [
          Addon(name: 'Teriyaki Beef', price: 5.0),
          Addon(name: 'Roasted Pumpkin Cubes', price: 1.0),
          Addon(name: 'Cilantro', price: 1.0),
          Addon(name: 'Honey Ginger', price: 2.0)
        ]),

    Food(
        name: 'The Mediterranean',
        category: FoodCategory.salads,
        imagePath: 'lib/images/salads/TheMediterranean.jpg',
        description:
            'Embark on a culinary journey with feta cheese, chickpeas, cherry tomatoes, mixed greens, cucumber, onions, toasted pumpkin seeds, and garlic croutons. Served with a choice of dressing.',
        price: 39.0,
        availableAddons: [
          Addon(name: 'Teriyaki Beef', price: 5.0),
          Addon(name: 'Roasted Pumpkin Cubes', price: 1.0),
          Addon(name: 'Cilantro', price: 1.0),
          Addon(name: 'Honey Ginger', price: 2.0)
        ]),

    // sides

    Food(
        name: 'Thod Man Goong',
        category: FoodCategory.sides,
        imagePath: 'lib/images/sides/ThodManGoong.jpg',
        description:
            'Shrimp cakes specially fried with minced shrimp and served with plum sauce.',
        price: 60.0,
        availableAddons: [
          Addon(name: 'Cilantro', price: 0.5),
          Addon(name: 'Thai Basil', price: 1.0),
          Addon(name: 'Thai Sweet Chili Sauce', price: 0.5),
        ]),

    Food(
        name: 'Squid Tempura',
        category: FoodCategory.sides,
        imagePath: 'lib/images/sides/SquidTempura.jpg',
        description:
            'Battered and deep fried squid, creating crispy side dish a tartar sauce.',
        price: 60.0,
        availableAddons: [
          Addon(name: 'Cilantro', price: 0.5),
          Addon(name: 'Thai Basil', price: 1.0),
          Addon(name: 'Thai Sweet Chili Sauce', price: 0.5),
        ]),

    Food(
        name: 'Peek Kai Thod Num Pla',
        category: FoodCategory.sides,
        imagePath: 'lib/images/sides/PeekKaiThodNumPla.jpg',
        description:
            'Fried chicken wings marinated with fish sauce, soy sauce, topioca.',
        price: 50.0,
        availableAddons: [
          Addon(name: 'Cilantro', price: 0.5),
          Addon(name: 'Thai Basil', price: 1.0),
          Addon(name: 'Thai Sweet Chili Sauce', price: 0.5),
        ]),
    Food(
        name: 'Thod Man Pla-Muek',
        category: FoodCategory.sides,
        imagePath: 'lib/images/sides/ThodManPlaMuek.jpg',
        description:
            'Tender squid cake cooked in low heat mixture with minced carrots and spring onions and tapioca flour, side dish seafood sauce.',
        price: 78.0,
        availableAddons: [
          Addon(name: 'Cilantro', price: 0.5),
          Addon(name: 'Thai Basil', price: 1.0),
          Addon(name: 'Thai Sweet Chili Sauce', price: 0.5),
        ]),
    Food(
        name: 'Gai Hor Bai Toei',
        category: FoodCategory.sides,
        imagePath: 'lib/images/sides/GaiHorBaiToei.jpg',
        description:
            'Fried chicken wrapped in pandan leaves, marinated in soy sauce, black pepper Sauce on side dish.',
        price: 58.0,
        availableAddons: [
          Addon(name: 'Cilantro', price: 0.5),
          Addon(name: 'Thai Basil', price: 1.0),
          Addon(name: 'Thai Sweet Chili Sauce', price: 0.5),
        ]),
  ];

  List<Food> get menu => _menu;

  List<CartItem> get cart => _cart;

  final List<CartItem> _cart = [];

  String _deliveryAddress = 'Manhampara House';

  String get deliveryAddress => _deliveryAddress;

  void setDeliveryAddress(String newAddress) {
    _deliveryAddress = newAddress;
    notifyListeners();
  }

// check if the same food with the same addons is already in the cart, if so, increase the quantity
// otherwise, add a new item to the cart
  void addToCart(Food food, List<Addon> selectedAddons) {
    CartItem? cartItem = _cart.firstWhereOrNull((item) {
      bool isSameFood = item.food == food;
      bool isSameAddons =
          const ListEquality().equals(item.selectedAddons, selectedAddons);
      return isSameFood && isSameAddons;
    });

    if (cartItem != null) {
      cartItem.quantity++;
    } else {
      _cart.add(CartItem(food: food, selectedAddons: selectedAddons));
    }
    notifyListeners();
  }

  /// Remove a CartItem from the cart. If the quantity of the item is greater than 1, decrease the quantity by 1.
  /// If the quantity is 1, remove the item from the cart.
  void removeFromCart(CartItem cartItem) {
    int cartIndex = _cart.indexOf(cartItem);
    if (cartIndex != -1) {
      // If the item is found in the cart, decrease its quantity by 1.
      // If the quantity is 1, remove the item from the cart.
      if (_cart[cartIndex].quantity > 1) {
        _cart[cartIndex].quantity--;
      } else {
        _cart.removeAt(cartIndex);
      }
    }
    notifyListeners();
  }

  /// Calculates the total price of all items in the cart.
  /// The total price is the sum of the prices of all items in the cart, including the prices of their add-ons.
  /// The price of each item is multiplied by its quantity in the cart.
  double getTotalPrice() {
    double totalPrice = 0.0;

    for (CartItem cartItem in _cart) {
      double itemTotal = cartItem.food.price;
      for (Addon addon in cartItem.selectedAddons) {
        itemTotal += addon.price;
      }
      totalPrice += itemTotal * cartItem.quantity;
    }
    return totalPrice;
  }

  /// Returns the total number of items in the cart.
  /// This is the sum of the quantities of all items in the cart.
  int getTotalItemCount() {
    int totalItemCount = 0;
    for (CartItem cartItem in _cart) {
      // Add the quantity of this item to the total count
      totalItemCount += cartItem.quantity;
    }
    return totalItemCount;
  }

  /// Clears the cart by removing all items from it.
  /// This also notifies listeners that the cart has changed.
  void clearCart() {
    // Clear the cart by removing all items from it
    _cart.clear();
    // Notify listeners that the cart has changed
    notifyListeners();
  }

  String displayCartReceipt() {
    final receipt = StringBuffer();
    receipt.writeln('Here is your receipt.');
    receipt.writeln(
        DateFormat('yyyy-MM-dd HH:mm:ss').format(DateTime.now()));
    receipt.writeln();
    receipt.writeln('--------------------------');

    for (CartItem cartItem in _cart) {
      receipt.writeln(
          '${cartItem.quantity} x ${cartItem.food.name} - ${_formatPrice(cartItem.food.price)}');

      if (cartItem.selectedAddons.isNotEmpty) {
        receipt.writeln('Add-ons: ${_formatAddons(cartItem.selectedAddons)}');
      }

      receipt.writeln();
      receipt.writeln('--------------------------');
    }

    receipt.writeln('Total Items: ${getTotalItemCount()}');
    receipt.writeln('Total Price: ${_formatPrice(getTotalPrice())}');
    receipt.writeln();
    receipt.writeln('Delivering to: $deliveryAddress');
    return receipt.toString();
  }

  String _formatPrice(double price) {
    return 'AED ${price.toStringAsFixed(2)}';
  }

  String _formatAddons(List<Addon> addons) {
    return addons
        .map((addon) => "${addon.name} (${_formatPrice(addon.price)})")
        .join(", ");
  }
  
}
