class Food {
  final String name;
  final String imagePath;
  final String description;
  final double price;
  final FoodCategory category;
  List<Addon> availableAddons;
  Food(
      {required this.name,
      required this.category,
      required this.imagePath,
      required this.description,
      required this.price,
      required this.availableAddons, 
      
      });
}

enum FoodCategory { burgers, salads, sides, drinks, deserts }

class Addon {
  final String name;
  final double price;

  Addon({required this.name, required this.price});
}
