import 'package:flutter/material.dart';
import 'package:food_shop_ui/core.dart';
import 'package:provider/provider.dart';

class HomeController extends State<HomeView> with ChangeNotifier {
  static late HomeController instance;
  late HomeView view;

  @override
  void initState() {
    instance = this;
    super.initState();
  }

  final List<Food> _foodMenu = [
    Food(
      name: "Healthy Food",
      price: "21.00",
      imagePath: "assets/images/1.png",
      rating: "4.7",
    ),
    Food(
      name: "Salad",
      price: "19.00",
      imagePath: "assets/images/2.png",
      rating: "4.8",
    ),
    Food(
      name: "Junk Food",
      price: "25.00",
      imagePath: "assets/images/3.png",
      rating: "4.9",
    ),
  ];

  // Customer cart
  final List<Food> _cart = [];

  // Getter methods
  List<Food> get foodMenu => _foodMenu;
  List<Food> get cart => _cart;

  // Add to cart
  void addToCart(Food foodItem, int quantity) {
    for (var i = 0; i < quantity; i++) {
      _cart.add(foodItem);
    }
    notifyListeners();
  }

  // Remove from cart
  void removeFromCart(Food food) {
    _cart.remove(food);
    notifyListeners();
  }

  @override
  Widget build(BuildContext context) => widget.build(context, this);

  navigateToFoodDetails(int index) {
    final shop = context.read<HomeController>();
    final foodMenu = shop._foodMenu;
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => FoodDetailView(
          food: foodMenu[index],
        ),
      ),
    );
  }
}
