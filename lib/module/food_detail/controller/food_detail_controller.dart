import 'package:flutter/material.dart';
import 'package:food_shop_ui/core.dart';

class FoodDetailController extends State<FoodDetailView> {
  static late FoodDetailController instance;
  late FoodDetailView view;

  @override
  void initState() {
    instance = this;
    super.initState();
  }

  @override
  void dispose() {
    super.dispose();
  }

  // Quantity
  int quantityCount = 0;

  VoidCallback get decrementQuantity => _decrementQuantity;
  VoidCallback get incrementQuantity => _incrementQuantity;

  // Decrement quantity
  void _decrementQuantity() {
    setState(() {
      quantityCount--;
    });
  }

  // Increment quantity
  void _incrementQuantity() {
    setState(() {
      quantityCount++;
    });
  }

  // Add to cart
  void Function() addToCart = () {
    Get.back();
  };
  @override
  Widget build(BuildContext context) => widget.build(context, this);
}
