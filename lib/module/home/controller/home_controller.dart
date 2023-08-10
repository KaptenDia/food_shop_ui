import 'package:flutter/material.dart';
import 'package:food_shop_ui/core.dart';
import 'package:food_shop_ui/module/home/model/food.dart';

class HomeController extends State<HomeView> {
  static late HomeController instance;
  late HomeView view;

  @override
  void initState() {
    instance = this;
    super.initState();
  }

  @override
  void dispose() => super.dispose();

  List<Food> foodMenu = [
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

  @override
  Widget build(BuildContext context) => widget.build(context, this);

  navigateToFoodDetails(int index) {
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
